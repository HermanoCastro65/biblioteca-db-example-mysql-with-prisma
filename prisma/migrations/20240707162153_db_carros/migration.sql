-- CreateTable
CREATE TABLE `Veiculo` (
    `Placa` VARCHAR(191) NOT NULL,
    `Chassi` VARCHAR(191) NOT NULL,
    `NumeroMotor` VARCHAR(191) NOT NULL,
    `cor` VARCHAR(191) NOT NULL,
    `tamanho` VARCHAR(191) NOT NULL,
    `N_Passageiros` INTEGER NOT NULL,
    `N_portas` INTEGER NOT NULL,
    `Tipo` VARCHAR(191) NOT NULL,
    `Capacidade_Carga` INTEGER NOT NULL,
    `idTipoVeiculo` INTEGER NOT NULL,
    `idFilial` INTEGER NOT NULL,

    PRIMARY KEY (`Placa`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_carroacessorios` (
    `idAutomovel` VARCHAR(191) NOT NULL,
    `Cod` INTEGER NOT NULL,

    PRIMARY KEY (`idAutomovel`, `Cod`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Acessorios` (
    `Cod` INTEGER NOT NULL,
    `Tipo` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`Cod`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Aluga` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `dt_fim` DATETIME(3) NOT NULL,
    `Placa` VARCHAR(191) NOT NULL,
    `cod_cliente` INTEGER NOT NULL,
    `dt_inicio` DATETIME(3) NOT NULL,

    UNIQUE INDEX `Aluga_id_dt_fim_Placa_cod_cliente_key`(`id`, `dt_fim`, `Placa`, `cod_cliente`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Cliente` (
    `cod_cliente` INTEGER NOT NULL AUTO_INCREMENT,
    `CNPJ` VARCHAR(191) NOT NULL,
    `inscricao_Estadual` VARCHAR(191) NOT NULL,
    `cpf` VARCHAR(191) NOT NULL,
    `sexo` VARCHAR(191) NOT NULL,
    `data_nascimento` DATETIME(3) NOT NULL,
    `nome` VARCHAR(191) NOT NULL,
    `num_habilitacao` VARCHAR(191) NOT NULL,
    `numero` VARCHAR(191) NOT NULL,
    `logradouro` VARCHAR(191) NOT NULL,
    `cidade` VARCHAR(191) NOT NULL,
    `bairro` VARCHAR(191) NOT NULL,
    `CEP` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`cod_cliente`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `AluguelServico` (
    `id_aluguelService` INTEGER NOT NULL AUTO_INCREMENT,
    `idAluga` INTEGER NOT NULL,
    `idServicoExtra` INTEGER NOT NULL,

    PRIMARY KEY (`id_aluguelService`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ServicoExtra` (
    `ID` INTEGER NOT NULL AUTO_INCREMENT,
    `Descricao` VARCHAR(191) NOT NULL,
    `Valor` DOUBLE NOT NULL,
    `idTipoServico` INTEGER NOT NULL,

    PRIMARY KEY (`ID`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TipoServico` (
    `id_tipo` INTEGER NOT NULL AUTO_INCREMENT,
    `descricao` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id_tipo`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Filial` (
    `id_filial` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id_filial`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_veiculo_manutencao` (
    `cod` INTEGER NOT NULL,
    `Placa` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`cod`, `Placa`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Manutencao` (
    `cod` INTEGER NOT NULL AUTO_INCREMENT,
    `Horas_Limpeza` INTEGER NOT NULL,
    `RevisaoEntrega` VARCHAR(191) NOT NULL,
    `Data_Revisao` DATETIME(3) NOT NULL,

    PRIMARY KEY (`cod`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TipoVeiculo` (
    `cod` INTEGER NOT NULL AUTO_INCREMENT,
    `Tipo` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`cod`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Veiculo` ADD CONSTRAINT `Veiculo_idTipoVeiculo_fkey` FOREIGN KEY (`idTipoVeiculo`) REFERENCES `TipoVeiculo`(`cod`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Veiculo` ADD CONSTRAINT `Veiculo_idFilial_fkey` FOREIGN KEY (`idFilial`) REFERENCES `Filial`(`id_filial`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `tb_carroacessorios` ADD CONSTRAINT `tb_carroacessorios_idAutomovel_fkey` FOREIGN KEY (`idAutomovel`) REFERENCES `Veiculo`(`Placa`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `tb_carroacessorios` ADD CONSTRAINT `tb_carroacessorios_Cod_fkey` FOREIGN KEY (`Cod`) REFERENCES `Acessorios`(`Cod`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Aluga` ADD CONSTRAINT `Aluga_Placa_fkey` FOREIGN KEY (`Placa`) REFERENCES `Veiculo`(`Placa`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Aluga` ADD CONSTRAINT `Aluga_cod_cliente_fkey` FOREIGN KEY (`cod_cliente`) REFERENCES `Cliente`(`cod_cliente`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `AluguelServico` ADD CONSTRAINT `AluguelServico_idAluga_fkey` FOREIGN KEY (`idAluga`) REFERENCES `Aluga`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `AluguelServico` ADD CONSTRAINT `AluguelServico_idServicoExtra_fkey` FOREIGN KEY (`idServicoExtra`) REFERENCES `ServicoExtra`(`ID`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ServicoExtra` ADD CONSTRAINT `ServicoExtra_idTipoServico_fkey` FOREIGN KEY (`idTipoServico`) REFERENCES `TipoServico`(`id_tipo`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `tb_veiculo_manutencao` ADD CONSTRAINT `tb_veiculo_manutencao_Placa_fkey` FOREIGN KEY (`Placa`) REFERENCES `Veiculo`(`Placa`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `tb_veiculo_manutencao` ADD CONSTRAINT `tb_veiculo_manutencao_cod_fkey` FOREIGN KEY (`cod`) REFERENCES `Manutencao`(`cod`) ON DELETE RESTRICT ON UPDATE CASCADE;
