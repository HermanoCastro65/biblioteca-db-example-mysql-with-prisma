SELECT `carros`.`Veiculo`.`Placa`, `carros`.`Veiculo`.`Chassi`, `carros`.`Veiculo`.`NumeroMotor`, `carros`.`Veiculo`.`cor`, `carros`.`Veiculo`.`tamanho`, `carros`.`Veiculo`.`N_Passageiros`, `carros`.`Veiculo`.`N_portas`, `carros`.`Veiculo`.`Tipo`, `carros`.`Veiculo`.`Capacidade_Carga`, `carros`.`Veiculo`.`idTipoVeiculo`, `carros`.`Veiculo`.`idFilial` FROM `carros`.`Veiculo` WHERE 1=1
SELECT `carros`.`Manutencao`.`cod`, `carros`.`Manutencao`.`Horas_Limpeza`, `carros`.`Manutencao`.`RevisaoEntrega`, `carros`.`Manutencao`.`Data_Revisao` FROM `carros`.`Manutencao` WHERE 1=1
INSERT INTO `carros`.`TipoServico` (`id_tipo`,`descricao`) VALUES (?,?)
SELECT `carros`.`TipoServico`.`id_tipo`, `carros`.`TipoServico`.`descricao` FROM `carros`.`TipoServico` WHERE `carros`.`TipoServico`.`id_tipo` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`TipoServico` (`id_tipo`,`descricao`) VALUES (?,?)
SELECT `carros`.`TipoServico`.`id_tipo`, `carros`.`TipoServico`.`descricao` FROM `carros`.`TipoServico` WHERE `carros`.`TipoServico`.`id_tipo` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`TipoServico` (`id_tipo`,`descricao`) VALUES (?,?)
SELECT `carros`.`TipoServico`.`id_tipo`, `carros`.`TipoServico`.`descricao` FROM `carros`.`TipoServico` WHERE `carros`.`TipoServico`.`id_tipo` = ? LIMIT ? OFFSET ?
SELECT `carros`.`TipoServico`.`id_tipo` FROM `carros`.`TipoServico` WHERE (`carros`.`TipoServico`.`id_tipo` = ? AND 1=1)
INSERT INTO `carros`.`ServicoExtra` (`ID`,`Descricao`,`Valor`,`idTipoServico`) VALUES (?,?,?,?)
SELECT `carros`.`ServicoExtra`.`ID`, `carros`.`ServicoExtra`.`Descricao`, `carros`.`ServicoExtra`.`Valor`, `carros`.`ServicoExtra`.`idTipoServico` FROM `carros`.`ServicoExtra` WHERE `carros`.`ServicoExtra`.`ID` = ? LIMIT ? OFFSET ?
SELECT `carros`.`TipoServico`.`id_tipo` FROM `carros`.`TipoServico` WHERE (`carros`.`TipoServico`.`id_tipo` = ? AND 1=1)
INSERT INTO `carros`.`ServicoExtra` (`ID`,`Descricao`,`Valor`,`idTipoServico`) VALUES (?,?,?,?)
SELECT `carros`.`ServicoExtra`.`ID`, `carros`.`ServicoExtra`.`Descricao`, `carros`.`ServicoExtra`.`Valor`, `carros`.`ServicoExtra`.`idTipoServico` FROM `carros`.`ServicoExtra` WHERE `carros`.`ServicoExtra`.`ID` = ? LIMIT ? OFFSET ?
SELECT `carros`.`TipoServico`.`id_tipo` FROM `carros`.`TipoServico` WHERE (`carros`.`TipoServico`.`id_tipo` = ? AND 1=1)
INSERT INTO `carros`.`ServicoExtra` (`ID`,`Descricao`,`Valor`,`idTipoServico`) VALUES (?,?,?,?)
SELECT `carros`.`ServicoExtra`.`ID`, `carros`.`ServicoExtra`.`Descricao`, `carros`.`ServicoExtra`.`Valor`, `carros`.`ServicoExtra`.`idTipoServico` FROM `carros`.`ServicoExtra` WHERE `carros`.`ServicoExtra`.`ID` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`TipoVeiculo` (`cod`,`Tipo`) VALUES (?,?)
SELECT `carros`.`TipoVeiculo`.`cod`, `carros`.`TipoVeiculo`.`Tipo` FROM `carros`.`TipoVeiculo` WHERE `carros`.`TipoVeiculo`.`cod` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`TipoVeiculo` (`cod`,`Tipo`) VALUES (?,?)
SELECT `carros`.`TipoVeiculo`.`cod`, `carros`.`TipoVeiculo`.`Tipo` FROM `carros`.`TipoVeiculo` WHERE `carros`.`TipoVeiculo`.`cod` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`TipoVeiculo` (`cod`,`Tipo`) VALUES (?,?)
SELECT `carros`.`TipoVeiculo`.`cod`, `carros`.`TipoVeiculo`.`Tipo` FROM `carros`.`TipoVeiculo` WHERE `carros`.`TipoVeiculo`.`cod` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Filial` (`id_filial`,`nome`) VALUES (?,?)
SELECT `carros`.`Filial`.`id_filial`, `carros`.`Filial`.`nome` FROM `carros`.`Filial` WHERE `carros`.`Filial`.`id_filial` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Filial` (`id_filial`,`nome`) VALUES (?,?)
SELECT `carros`.`Filial`.`id_filial`, `carros`.`Filial`.`nome` FROM `carros`.`Filial` WHERE `carros`.`Filial`.`id_filial` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Filial` (`id_filial`,`nome`) VALUES (?,?)
SELECT `carros`.`Filial`.`id_filial`, `carros`.`Filial`.`nome` FROM `carros`.`Filial` WHERE `carros`.`Filial`.`id_filial` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Cliente` (`cod_cliente`,`CNPJ`,`inscricao_Estadual`,`cpf`,`sexo`,`data_nascimento`,`nome`,`num_habilitacao`,`numero`,`logradouro`,`cidade`,`bairro`,`CEP`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)
SELECT `carros`.`Cliente`.`cod_cliente`, `carros`.`Cliente`.`CNPJ`, `carros`.`Cliente`.`inscricao_Estadual`, `carros`.`Cliente`.`cpf`, `carros`.`Cliente`.`sexo`, `carros`.`Cliente`.`data_nascimento`, `carros`.`Cliente`.`nome`, `carros`.`Cliente`.`num_habilitacao`, `carros`.`Cliente`.`numero`, `carros`.`Cliente`.`logradouro`, `carros`.`Cliente`.`cidade`, `carros`.`Cliente`.`bairro`, `carros`.`Cliente`.`CEP` FROM `carros`.`Cliente` WHERE `carros`.`Cliente`.`cod_cliente` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Cliente` (`cod_cliente`,`CNPJ`,`inscricao_Estadual`,`cpf`,`sexo`,`data_nascimento`,`nome`,`num_habilitacao`,`numero`,`logradouro`,`cidade`,`bairro`,`CEP`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)
SELECT `carros`.`Cliente`.`cod_cliente`, `carros`.`Cliente`.`CNPJ`, `carros`.`Cliente`.`inscricao_Estadual`, `carros`.`Cliente`.`cpf`, `carros`.`Cliente`.`sexo`, `carros`.`Cliente`.`data_nascimento`, `carros`.`Cliente`.`nome`, `carros`.`Cliente`.`num_habilitacao`, `carros`.`Cliente`.`numero`, `carros`.`Cliente`.`logradouro`, `carros`.`Cliente`.`cidade`, `carros`.`Cliente`.`bairro`, `carros`.`Cliente`.`CEP` FROM `carros`.`Cliente` WHERE `carros`.`Cliente`.`cod_cliente` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Cliente` (`cod_cliente`,`CNPJ`,`inscricao_Estadual`,`cpf`,`sexo`,`data_nascimento`,`nome`,`num_habilitacao`,`numero`,`logradouro`,`cidade`,`bairro`,`CEP`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)
SELECT `carros`.`Cliente`.`cod_cliente`, `carros`.`Cliente`.`CNPJ`, `carros`.`Cliente`.`inscricao_Estadual`, `carros`.`Cliente`.`cpf`, `carros`.`Cliente`.`sexo`, `carros`.`Cliente`.`data_nascimento`, `carros`.`Cliente`.`nome`, `carros`.`Cliente`.`num_habilitacao`, `carros`.`Cliente`.`numero`, `carros`.`Cliente`.`logradouro`, `carros`.`Cliente`.`cidade`, `carros`.`Cliente`.`bairro`, `carros`.`Cliente`.`CEP` FROM `carros`.`Cliente` WHERE `carros`.`Cliente`.`cod_cliente` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Cliente` (`cod_cliente`,`CNPJ`,`inscricao_Estadual`,`cpf`,`sexo`,`data_nascimento`,`nome`,`num_habilitacao`,`numero`,`logradouro`,`cidade`,`bairro`,`CEP`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)
SELECT `carros`.`Cliente`.`cod_cliente`, `carros`.`Cliente`.`CNPJ`, `carros`.`Cliente`.`inscricao_Estadual`, `carros`.`Cliente`.`cpf`, `carros`.`Cliente`.`sexo`, `carros`.`Cliente`.`data_nascimento`, `carros`.`Cliente`.`nome`, `carros`.`Cliente`.`num_habilitacao`, `carros`.`Cliente`.`numero`, `carros`.`Cliente`.`logradouro`, `carros`.`Cliente`.`cidade`, `carros`.`Cliente`.`bairro`, `carros`.`Cliente`.`CEP` FROM `carros`.`Cliente` WHERE `carros`.`Cliente`.`cod_cliente` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Cliente` (`cod_cliente`,`CNPJ`,`inscricao_Estadual`,`cpf`,`sexo`,`data_nascimento`,`nome`,`num_habilitacao`,`numero`,`logradouro`,`cidade`,`bairro`,`CEP`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)
SELECT `carros`.`Cliente`.`cod_cliente`, `carros`.`Cliente`.`CNPJ`, `carros`.`Cliente`.`inscricao_Estadual`, `carros`.`Cliente`.`cpf`, `carros`.`Cliente`.`sexo`, `carros`.`Cliente`.`data_nascimento`, `carros`.`Cliente`.`nome`, `carros`.`Cliente`.`num_habilitacao`, `carros`.`Cliente`.`numero`, `carros`.`Cliente`.`logradouro`, `carros`.`Cliente`.`cidade`, `carros`.`Cliente`.`bairro`, `carros`.`Cliente`.`CEP` FROM `carros`.`Cliente` WHERE `carros`.`Cliente`.`cod_cliente` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Cliente` (`cod_cliente`,`CNPJ`,`inscricao_Estadual`,`cpf`,`sexo`,`data_nascimento`,`nome`,`num_habilitacao`,`numero`,`logradouro`,`cidade`,`bairro`,`CEP`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)
SELECT `carros`.`Cliente`.`cod_cliente`, `carros`.`Cliente`.`CNPJ`, `carros`.`Cliente`.`inscricao_Estadual`, `carros`.`Cliente`.`cpf`, `carros`.`Cliente`.`sexo`, `carros`.`Cliente`.`data_nascimento`, `carros`.`Cliente`.`nome`, `carros`.`Cliente`.`num_habilitacao`, `carros`.`Cliente`.`numero`, `carros`.`Cliente`.`logradouro`, `carros`.`Cliente`.`cidade`, `carros`.`Cliente`.`bairro`, `carros`.`Cliente`.`CEP` FROM `carros`.`Cliente` WHERE `carros`.`Cliente`.`cod_cliente` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Cliente` (`cod_cliente`,`CNPJ`,`inscricao_Estadual`,`cpf`,`sexo`,`data_nascimento`,`nome`,`num_habilitacao`,`numero`,`logradouro`,`cidade`,`bairro`,`CEP`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)
SELECT `carros`.`Cliente`.`cod_cliente`, `carros`.`Cliente`.`CNPJ`, `carros`.`Cliente`.`inscricao_Estadual`, `carros`.`Cliente`.`cpf`, `carros`.`Cliente`.`sexo`, `carros`.`Cliente`.`data_nascimento`, `carros`.`Cliente`.`nome`, `carros`.`Cliente`.`num_habilitacao`, `carros`.`Cliente`.`numero`, `carros`.`Cliente`.`logradouro`, `carros`.`Cliente`.`cidade`, `carros`.`Cliente`.`bairro`, `carros`.`Cliente`.`CEP` FROM `carros`.`Cliente` WHERE `carros`.`Cliente`.`cod_cliente` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Cliente` (`cod_cliente`,`CNPJ`,`inscricao_Estadual`,`cpf`,`sexo`,`data_nascimento`,`nome`,`num_habilitacao`,`numero`,`logradouro`,`cidade`,`bairro`,`CEP`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)
SELECT `carros`.`Cliente`.`cod_cliente`, `carros`.`Cliente`.`CNPJ`, `carros`.`Cliente`.`inscricao_Estadual`, `carros`.`Cliente`.`cpf`, `carros`.`Cliente`.`sexo`, `carros`.`Cliente`.`data_nascimento`, `carros`.`Cliente`.`nome`, `carros`.`Cliente`.`num_habilitacao`, `carros`.`Cliente`.`numero`, `carros`.`Cliente`.`logradouro`, `carros`.`Cliente`.`cidade`, `carros`.`Cliente`.`bairro`, `carros`.`Cliente`.`CEP` FROM `carros`.`Cliente` WHERE `carros`.`Cliente`.`cod_cliente` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Cliente` (`cod_cliente`,`CNPJ`,`inscricao_Estadual`,`cpf`,`sexo`,`data_nascimento`,`nome`,`num_habilitacao`,`numero`,`logradouro`,`cidade`,`bairro`,`CEP`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)
SELECT `carros`.`Cliente`.`cod_cliente`, `carros`.`Cliente`.`CNPJ`, `carros`.`Cliente`.`inscricao_Estadual`, `carros`.`Cliente`.`cpf`, `carros`.`Cliente`.`sexo`, `carros`.`Cliente`.`data_nascimento`, `carros`.`Cliente`.`nome`, `carros`.`Cliente`.`num_habilitacao`, `carros`.`Cliente`.`numero`, `carros`.`Cliente`.`logradouro`, `carros`.`Cliente`.`cidade`, `carros`.`Cliente`.`bairro`, `carros`.`Cliente`.`CEP` FROM `carros`.`Cliente` WHERE `carros`.`Cliente`.`cod_cliente` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Cliente` (`cod_cliente`,`CNPJ`,`inscricao_Estadual`,`cpf`,`sexo`,`data_nascimento`,`nome`,`num_habilitacao`,`numero`,`logradouro`,`cidade`,`bairro`,`CEP`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)
SELECT `carros`.`Cliente`.`cod_cliente`, `carros`.`Cliente`.`CNPJ`, `carros`.`Cliente`.`inscricao_Estadual`, `carros`.`Cliente`.`cpf`, `carros`.`Cliente`.`sexo`, `carros`.`Cliente`.`data_nascimento`, `carros`.`Cliente`.`nome`, `carros`.`Cliente`.`num_habilitacao`, `carros`.`Cliente`.`numero`, `carros`.`Cliente`.`logradouro`, `carros`.`Cliente`.`cidade`, `carros`.`Cliente`.`bairro`, `carros`.`Cliente`.`CEP` FROM `carros`.`Cliente` WHERE `carros`.`Cliente`.`cod_cliente` = ? LIMIT ? OFFSET ?
SELECT `carros`.`TipoVeiculo`.`cod`, `carros`.`TipoVeiculo`.`Tipo` FROM `carros`.`TipoVeiculo` WHERE 1=1
SELECT `carros`.`Filial`.`id_filial`, `carros`.`Filial`.`nome` FROM `carros`.`Filial` WHERE 1=1
SELECT `carros`.`Filial`.`id_filial` FROM `carros`.`Filial` WHERE (`carros`.`Filial`.`id_filial` = ? AND 1=1)
SELECT `carros`.`TipoVeiculo`.`cod` FROM `carros`.`TipoVeiculo` WHERE (`carros`.`TipoVeiculo`.`cod` = ? AND 1=1)
INSERT INTO `carros`.`Veiculo` (`Placa`,`Chassi`,`NumeroMotor`,`cor`,`tamanho`,`N_Passageiros`,`N_portas`,`Tipo`,`Capacidade_Carga`,`idTipoVeiculo`,`idFilial`) VALUES (?,?,?,?,?,?,?,?,?,?,?)
SELECT `carros`.`Veiculo`.`Placa`, `carros`.`Veiculo`.`Chassi`, `carros`.`Veiculo`.`NumeroMotor`, `carros`.`Veiculo`.`cor`, `carros`.`Veiculo`.`tamanho`, `carros`.`Veiculo`.`N_Passageiros`, `carros`.`Veiculo`.`N_portas`, `carros`.`Veiculo`.`Tipo`, `carros`.`Veiculo`.`Capacidade_Carga`, `carros`.`Veiculo`.`idTipoVeiculo`, `carros`.`Veiculo`.`idFilial` FROM `carros`.`Veiculo` WHERE `carros`.`Veiculo`.`Placa` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Filial`.`id_filial` FROM `carros`.`Filial` WHERE (`carros`.`Filial`.`id_filial` = ? AND 1=1)
SELECT `carros`.`TipoVeiculo`.`cod` FROM `carros`.`TipoVeiculo` WHERE (`carros`.`TipoVeiculo`.`cod` = ? AND 1=1)
INSERT INTO `carros`.`Veiculo` (`Placa`,`Chassi`,`NumeroMotor`,`cor`,`tamanho`,`N_Passageiros`,`N_portas`,`Tipo`,`Capacidade_Carga`,`idTipoVeiculo`,`idFilial`) VALUES (?,?,?,?,?,?,?,?,?,?,?)
SELECT `carros`.`Veiculo`.`Placa`, `carros`.`Veiculo`.`Chassi`, `carros`.`Veiculo`.`NumeroMotor`, `carros`.`Veiculo`.`cor`, `carros`.`Veiculo`.`tamanho`, `carros`.`Veiculo`.`N_Passageiros`, `carros`.`Veiculo`.`N_portas`, `carros`.`Veiculo`.`Tipo`, `carros`.`Veiculo`.`Capacidade_Carga`, `carros`.`Veiculo`.`idTipoVeiculo`, `carros`.`Veiculo`.`idFilial` FROM `carros`.`Veiculo` WHERE `carros`.`Veiculo`.`Placa` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Filial`.`id_filial` FROM `carros`.`Filial` WHERE (`carros`.`Filial`.`id_filial` = ? AND 1=1)
SELECT `carros`.`TipoVeiculo`.`cod` FROM `carros`.`TipoVeiculo` WHERE (`carros`.`TipoVeiculo`.`cod` = ? AND 1=1)
INSERT INTO `carros`.`Veiculo` (`Placa`,`Chassi`,`NumeroMotor`,`cor`,`tamanho`,`N_Passageiros`,`N_portas`,`Tipo`,`Capacidade_Carga`,`idTipoVeiculo`,`idFilial`) VALUES (?,?,?,?,?,?,?,?,?,?,?)
SELECT `carros`.`Veiculo`.`Placa`, `carros`.`Veiculo`.`Chassi`, `carros`.`Veiculo`.`NumeroMotor`, `carros`.`Veiculo`.`cor`, `carros`.`Veiculo`.`tamanho`, `carros`.`Veiculo`.`N_Passageiros`, `carros`.`Veiculo`.`N_portas`, `carros`.`Veiculo`.`Tipo`, `carros`.`Veiculo`.`Capacidade_Carga`, `carros`.`Veiculo`.`idTipoVeiculo`, `carros`.`Veiculo`.`idFilial` FROM `carros`.`Veiculo` WHERE `carros`.`Veiculo`.`Placa` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Filial`.`id_filial` FROM `carros`.`Filial` WHERE (`carros`.`Filial`.`id_filial` = ? AND 1=1)
SELECT `carros`.`TipoVeiculo`.`cod` FROM `carros`.`TipoVeiculo` WHERE (`carros`.`TipoVeiculo`.`cod` = ? AND 1=1)
INSERT INTO `carros`.`Veiculo` (`Placa`,`Chassi`,`NumeroMotor`,`cor`,`tamanho`,`N_Passageiros`,`N_portas`,`Tipo`,`Capacidade_Carga`,`idTipoVeiculo`,`idFilial`) VALUES (?,?,?,?,?,?,?,?,?,?,?)
SELECT `carros`.`Veiculo`.`Placa`, `carros`.`Veiculo`.`Chassi`, `carros`.`Veiculo`.`NumeroMotor`, `carros`.`Veiculo`.`cor`, `carros`.`Veiculo`.`tamanho`, `carros`.`Veiculo`.`N_Passageiros`, `carros`.`Veiculo`.`N_portas`, `carros`.`Veiculo`.`Tipo`, `carros`.`Veiculo`.`Capacidade_Carga`, `carros`.`Veiculo`.`idTipoVeiculo`, `carros`.`Veiculo`.`idFilial` FROM `carros`.`Veiculo` WHERE `carros`.`Veiculo`.`Placa` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Filial`.`id_filial` FROM `carros`.`Filial` WHERE (`carros`.`Filial`.`id_filial` = ? AND 1=1)
SELECT `carros`.`TipoVeiculo`.`cod` FROM `carros`.`TipoVeiculo` WHERE (`carros`.`TipoVeiculo`.`cod` = ? AND 1=1)
INSERT INTO `carros`.`Veiculo` (`Placa`,`Chassi`,`NumeroMotor`,`cor`,`tamanho`,`N_Passageiros`,`N_portas`,`Tipo`,`Capacidade_Carga`,`idTipoVeiculo`,`idFilial`) VALUES (?,?,?,?,?,?,?,?,?,?,?)
SELECT `carros`.`Veiculo`.`Placa`, `carros`.`Veiculo`.`Chassi`, `carros`.`Veiculo`.`NumeroMotor`, `carros`.`Veiculo`.`cor`, `carros`.`Veiculo`.`tamanho`, `carros`.`Veiculo`.`N_Passageiros`, `carros`.`Veiculo`.`N_portas`, `carros`.`Veiculo`.`Tipo`, `carros`.`Veiculo`.`Capacidade_Carga`, `carros`.`Veiculo`.`idTipoVeiculo`, `carros`.`Veiculo`.`idFilial` FROM `carros`.`Veiculo` WHERE `carros`.`Veiculo`.`Placa` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Filial`.`id_filial` FROM `carros`.`Filial` WHERE (`carros`.`Filial`.`id_filial` = ? AND 1=1)
SELECT `carros`.`TipoVeiculo`.`cod` FROM `carros`.`TipoVeiculo` WHERE (`carros`.`TipoVeiculo`.`cod` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa`, `carros`.`Veiculo`.`Chassi`, `carros`.`Veiculo`.`NumeroMotor`, `carros`.`Veiculo`.`cor`, `carros`.`Veiculo`.`tamanho`, `carros`.`Veiculo`.`N_Passageiros`, `carros`.`Veiculo`.`N_portas`, `carros`.`Veiculo`.`Tipo`, `carros`.`Veiculo`.`Capacidade_Carga`, `carros`.`Veiculo`.`idTipoVeiculo`, `carros`.`Veiculo`.`idFilial` FROM `carros`.`Veiculo` WHERE `carros`.`Veiculo`.`Placa` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Veiculo` (`Placa`,`Chassi`,`NumeroMotor`,`cor`,`tamanho`,`N_Passageiros`,`N_portas`,`Tipo`,`Capacidade_Carga`,`idTipoVeiculo`,`idFilial`) VALUES (?,?,?,?,?,?,?,?,?,?,?)
SELECT `carros`.`Filial`.`id_filial` FROM `carros`.`Filial` WHERE (`carros`.`Filial`.`id_filial` = ? AND 1=1)
SELECT `carros`.`TipoVeiculo`.`cod` FROM `carros`.`TipoVeiculo` WHERE (`carros`.`TipoVeiculo`.`cod` = ? AND 1=1)
INSERT INTO `carros`.`Veiculo` (`Placa`,`Chassi`,`NumeroMotor`,`cor`,`tamanho`,`N_Passageiros`,`N_portas`,`Tipo`,`Capacidade_Carga`,`idTipoVeiculo`,`idFilial`) VALUES (?,?,?,?,?,?,?,?,?,?,?)
SELECT `carros`.`Veiculo`.`Placa`, `carros`.`Veiculo`.`Chassi`, `carros`.`Veiculo`.`NumeroMotor`, `carros`.`Veiculo`.`cor`, `carros`.`Veiculo`.`tamanho`, `carros`.`Veiculo`.`N_Passageiros`, `carros`.`Veiculo`.`N_portas`, `carros`.`Veiculo`.`Tipo`, `carros`.`Veiculo`.`Capacidade_Carga`, `carros`.`Veiculo`.`idTipoVeiculo`, `carros`.`Veiculo`.`idFilial` FROM `carros`.`Veiculo` WHERE `carros`.`Veiculo`.`Placa` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Filial`.`id_filial` FROM `carros`.`Filial` WHERE (`carros`.`Filial`.`id_filial` = ? AND 1=1)
SELECT `carros`.`TipoVeiculo`.`cod` FROM `carros`.`TipoVeiculo` WHERE (`carros`.`TipoVeiculo`.`cod` = ? AND 1=1)
INSERT INTO `carros`.`Veiculo` (`Placa`,`Chassi`,`NumeroMotor`,`cor`,`tamanho`,`N_Passageiros`,`N_portas`,`Tipo`,`Capacidade_Carga`,`idTipoVeiculo`,`idFilial`) VALUES (?,?,?,?,?,?,?,?,?,?,?)
SELECT `carros`.`Veiculo`.`Placa`, `carros`.`Veiculo`.`Chassi`, `carros`.`Veiculo`.`NumeroMotor`, `carros`.`Veiculo`.`cor`, `carros`.`Veiculo`.`tamanho`, `carros`.`Veiculo`.`N_Passageiros`, `carros`.`Veiculo`.`N_portas`, `carros`.`Veiculo`.`Tipo`, `carros`.`Veiculo`.`Capacidade_Carga`, `carros`.`Veiculo`.`idTipoVeiculo`, `carros`.`Veiculo`.`idFilial` FROM `carros`.`Veiculo` WHERE `carros`.`Veiculo`.`Placa` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Filial`.`id_filial` FROM `carros`.`Filial` WHERE (`carros`.`Filial`.`id_filial` = ? AND 1=1)
SELECT `carros`.`TipoVeiculo`.`cod` FROM `carros`.`TipoVeiculo` WHERE (`carros`.`TipoVeiculo`.`cod` = ? AND 1=1)
INSERT INTO `carros`.`Veiculo` (`Placa`,`Chassi`,`NumeroMotor`,`cor`,`tamanho`,`N_Passageiros`,`N_portas`,`Tipo`,`Capacidade_Carga`,`idTipoVeiculo`,`idFilial`) VALUES (?,?,?,?,?,?,?,?,?,?,?)
SELECT `carros`.`Veiculo`.`Placa`, `carros`.`Veiculo`.`Chassi`, `carros`.`Veiculo`.`NumeroMotor`, `carros`.`Veiculo`.`cor`, `carros`.`Veiculo`.`tamanho`, `carros`.`Veiculo`.`N_Passageiros`, `carros`.`Veiculo`.`N_portas`, `carros`.`Veiculo`.`Tipo`, `carros`.`Veiculo`.`Capacidade_Carga`, `carros`.`Veiculo`.`idTipoVeiculo`, `carros`.`Veiculo`.`idFilial` FROM `carros`.`Veiculo` WHERE `carros`.`Veiculo`.`Placa` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Filial`.`id_filial` FROM `carros`.`Filial` WHERE (`carros`.`Filial`.`id_filial` = ? AND 1=1)
SELECT `carros`.`TipoVeiculo`.`cod` FROM `carros`.`TipoVeiculo` WHERE (`carros`.`TipoVeiculo`.`cod` = ? AND 1=1)
INSERT INTO `carros`.`Veiculo` (`Placa`,`Chassi`,`NumeroMotor`,`cor`,`tamanho`,`N_Passageiros`,`N_portas`,`Tipo`,`Capacidade_Carga`,`idTipoVeiculo`,`idFilial`) VALUES (?,?,?,?,?,?,?,?,?,?,?)
SELECT `carros`.`Veiculo`.`Placa`, `carros`.`Veiculo`.`Chassi`, `carros`.`Veiculo`.`NumeroMotor`, `carros`.`Veiculo`.`cor`, `carros`.`Veiculo`.`tamanho`, `carros`.`Veiculo`.`N_Passageiros`, `carros`.`Veiculo`.`N_portas`, `carros`.`Veiculo`.`Tipo`, `carros`.`Veiculo`.`Capacidade_Carga`, `carros`.`Veiculo`.`idTipoVeiculo`, `carros`.`Veiculo`.`idFilial` FROM `carros`.`Veiculo` WHERE `carros`.`Veiculo`.`Placa` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Acessorios`.`Cod`, `carros`.`Acessorios`.`Tipo` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1) LIMIT ? OFFSET ?
INSERT INTO `carros`.`Acessorios` (`Cod`,`Tipo`) VALUES (?,?)
SELECT `carros`.`Acessorios`.`Cod`, `carros`.`Acessorios`.`Tipo` FROM `carros`.`Acessorios` WHERE `carros`.`Acessorios`.`Cod` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Acessorios`.`Cod`, `carros`.`Acessorios`.`Tipo` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1) LIMIT ? OFFSET ?
INSERT INTO `carros`.`Acessorios` (`Cod`,`Tipo`) VALUES (?,?)
SELECT `carros`.`Acessorios`.`Cod`, `carros`.`Acessorios`.`Tipo` FROM `carros`.`Acessorios` WHERE `carros`.`Acessorios`.`Cod` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Acessorios`.`Cod`, `carros`.`Acessorios`.`Tipo` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1) LIMIT ? OFFSET ?
INSERT INTO `carros`.`Acessorios` (`Cod`,`Tipo`) VALUES (?,?)
SELECT `carros`.`Acessorios`.`Cod`, `carros`.`Acessorios`.`Tipo` FROM `carros`.`Acessorios` WHERE `carros`.`Acessorios`.`Cod` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Acessorios`.`Cod`, `carros`.`Acessorios`.`Tipo` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1) LIMIT ? OFFSET ?
INSERT INTO `carros`.`Acessorios` (`Cod`,`Tipo`) VALUES (?,?)
SELECT `carros`.`Acessorios`.`Cod`, `carros`.`Acessorios`.`Tipo` FROM `carros`.`Acessorios` WHERE `carros`.`Acessorios`.`Cod` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Acessorios`.`Cod`, `carros`.`Acessorios`.`Tipo` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1) LIMIT ? OFFSET ?
INSERT INTO `carros`.`Acessorios` (`Cod`,`Tipo`) VALUES (?,?)
SELECT `carros`.`Acessorios`.`Cod`, `carros`.`Acessorios`.`Tipo` FROM `carros`.`Acessorios` WHERE `carros`.`Acessorios`.`Cod` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Veiculo`.`Placa`, `carros`.`Veiculo`.`Chassi`, `carros`.`Veiculo`.`NumeroMotor`, `carros`.`Veiculo`.`cor`, `carros`.`Veiculo`.`tamanho`, `carros`.`Veiculo`.`N_Passageiros`, `carros`.`Veiculo`.`N_portas`, `carros`.`Veiculo`.`Tipo`, `carros`.`Veiculo`.`Capacidade_Carga`, `carros`.`Veiculo`.`idTipoVeiculo`, `carros`.`Veiculo`.`idFilial` FROM `carros`.`Veiculo` WHERE 1=1
SELECT `carros`.`Acessorios`.`Cod`, `carros`.`Acessorios`.`Tipo` FROM `carros`.`Acessorios` WHERE 1=1
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE ((`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) AND 1=1)
SELECT `carros`.`Acessorios`.`Cod` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_carroacessorios` (`idAutomovel`,`Cod`) VALUES (?,?)
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE (`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) LIMIT ? OFFSET ?
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE ((`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) AND 1=1)
SELECT `carros`.`Acessorios`.`Cod` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_carroacessorios` (`idAutomovel`,`Cod`) VALUES (?,?)
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE (`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) LIMIT ? OFFSET ?
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE ((`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) AND 1=1)
SELECT `carros`.`Acessorios`.`Cod` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_carroacessorios` (`idAutomovel`,`Cod`) VALUES (?,?)
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE (`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) LIMIT ? OFFSET ?
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE ((`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) AND 1=1)
SELECT `carros`.`Acessorios`.`Cod` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_carroacessorios` (`idAutomovel`,`Cod`) VALUES (?,?)
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE (`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) LIMIT ? OFFSET ?
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE ((`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) AND 1=1)
SELECT `carros`.`Acessorios`.`Cod` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_carroacessorios` (`idAutomovel`,`Cod`) VALUES (?,?)
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE (`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) LIMIT ? OFFSET ?
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE ((`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) AND 1=1)
SELECT `carros`.`Acessorios`.`Cod` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_carroacessorios` (`idAutomovel`,`Cod`) VALUES (?,?)
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE (`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) LIMIT ? OFFSET ?
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE ((`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) AND 1=1)
SELECT `carros`.`Acessorios`.`Cod` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_carroacessorios` (`idAutomovel`,`Cod`) VALUES (?,?)
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE (`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) LIMIT ? OFFSET ?
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE ((`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) AND 1=1)
SELECT `carros`.`Acessorios`.`Cod` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_carroacessorios` (`idAutomovel`,`Cod`) VALUES (?,?)
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE (`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) LIMIT ? OFFSET ?
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE ((`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) AND 1=1)
SELECT `carros`.`Acessorios`.`Cod` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_carroacessorios` (`idAutomovel`,`Cod`) VALUES (?,?)
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE (`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) LIMIT ? OFFSET ?
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE ((`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) AND 1=1)
SELECT `carros`.`Acessorios`.`Cod` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_carroacessorios` (`idAutomovel`,`Cod`) VALUES (?,?)
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE (`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) LIMIT ? OFFSET ?
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE ((`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) AND 1=1)
SELECT `carros`.`Acessorios`.`Cod` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_carroacessorios` (`idAutomovel`,`Cod`) VALUES (?,?)
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE (`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) LIMIT ? OFFSET ?
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE ((`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) AND 1=1)
SELECT `carros`.`Acessorios`.`Cod` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_carroacessorios` (`idAutomovel`,`Cod`) VALUES (?,?)
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE (`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) LIMIT ? OFFSET ?
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE ((`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) AND 1=1)
SELECT `carros`.`Acessorios`.`Cod` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_carroacessorios` (`idAutomovel`,`Cod`) VALUES (?,?)
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE (`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) LIMIT ? OFFSET ?
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE ((`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) AND 1=1)
SELECT `carros`.`Acessorios`.`Cod` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_carroacessorios` (`idAutomovel`,`Cod`) VALUES (?,?)
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE (`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) LIMIT ? OFFSET ?
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE ((`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) AND 1=1)
SELECT `carros`.`Acessorios`.`Cod` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_carroacessorios` (`idAutomovel`,`Cod`) VALUES (?,?)
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE (`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) LIMIT ? OFFSET ?
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE ((`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) AND 1=1)
SELECT `carros`.`Acessorios`.`Cod` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_carroacessorios` (`idAutomovel`,`Cod`) VALUES (?,?)
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE (`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) LIMIT ? OFFSET ?
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE ((`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) AND 1=1)
SELECT `carros`.`Acessorios`.`Cod` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_carroacessorios` (`idAutomovel`,`Cod`) VALUES (?,?)
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE (`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) LIMIT ? OFFSET ?
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE ((`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) AND 1=1)
SELECT `carros`.`Acessorios`.`Cod` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_carroacessorios` (`idAutomovel`,`Cod`) VALUES (?,?)
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE (`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) LIMIT ? OFFSET ?
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE ((`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) AND 1=1)
SELECT `carros`.`Acessorios`.`Cod` FROM `carros`.`Acessorios` WHERE (`carros`.`Acessorios`.`Cod` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_carroacessorios` (`idAutomovel`,`Cod`) VALUES (?,?)
SELECT `carros`.`tb_carroacessorios`.`idAutomovel`, `carros`.`tb_carroacessorios`.`Cod` FROM `carros`.`tb_carroacessorios` WHERE (`carros`.`tb_carroacessorios`.`idAutomovel` = ? AND `carros`.`tb_carroacessorios`.`Cod` = ?) LIMIT ? OFFSET ?
SELECT `carros`.`Veiculo`.`Placa`, `carros`.`Veiculo`.`Chassi`, `carros`.`Veiculo`.`NumeroMotor`, `carros`.`Veiculo`.`cor`, `carros`.`Veiculo`.`tamanho`, `carros`.`Veiculo`.`N_Passageiros`, `carros`.`Veiculo`.`N_portas`, `carros`.`Veiculo`.`Tipo`, `carros`.`Veiculo`.`Capacidade_Carga`, `carros`.`Veiculo`.`idTipoVeiculo`, `carros`.`Veiculo`.`idFilial` FROM `carros`.`Veiculo` WHERE 1=1
SELECT `carros`.`Cliente`.`cod_cliente`, `carros`.`Cliente`.`CNPJ`, `carros`.`Cliente`.`inscricao_Estadual`, `carros`.`Cliente`.`cpf`, `carros`.`Cliente`.`sexo`, `carros`.`Cliente`.`data_nascimento`, `carros`.`Cliente`.`nome`, `carros`.`Cliente`.`num_habilitacao`, `carros`.`Cliente`.`numero`, `carros`.`Cliente`.`logradouro`, `carros`.`Cliente`.`cidade`, `carros`.`Cliente`.`bairro`, `carros`.`Cliente`.`CEP` FROM `carros`.`Cliente` WHERE 1=1
SELECT `carros`.`Cliente`.`cod_cliente` FROM `carros`.`Cliente` WHERE (`carros`.`Cliente`.`cod_cliente` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`Aluga` (`id`,`dt_fim`,`Placa`,`cod_cliente`,`dt_inicio`) VALUES (?,?,?,?,?)
SELECT `carros`.`Aluga`.`id`, `carros`.`Aluga`.`dt_fim`, `carros`.`Aluga`.`Placa`, `carros`.`Aluga`.`cod_cliente`, `carros`.`Aluga`.`dt_inicio` FROM `carros`.`Aluga` WHERE `carros`.`Aluga`.`id` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Cliente`.`cod_cliente` FROM `carros`.`Cliente` WHERE (`carros`.`Cliente`.`cod_cliente` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`Aluga` (`id`,`dt_fim`,`Placa`,`cod_cliente`,`dt_inicio`) VALUES (?,?,?,?,?)
SELECT `carros`.`Aluga`.`id`, `carros`.`Aluga`.`dt_fim`, `carros`.`Aluga`.`Placa`, `carros`.`Aluga`.`cod_cliente`, `carros`.`Aluga`.`dt_inicio` FROM `carros`.`Aluga` WHERE `carros`.`Aluga`.`id` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Cliente`.`cod_cliente` FROM `carros`.`Cliente` WHERE (`carros`.`Cliente`.`cod_cliente` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`Aluga` (`id`,`dt_fim`,`Placa`,`cod_cliente`,`dt_inicio`) VALUES (?,?,?,?,?)
SELECT `carros`.`Aluga`.`id`, `carros`.`Aluga`.`dt_fim`, `carros`.`Aluga`.`Placa`, `carros`.`Aluga`.`cod_cliente`, `carros`.`Aluga`.`dt_inicio` FROM `carros`.`Aluga` WHERE `carros`.`Aluga`.`id` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Cliente`.`cod_cliente` FROM `carros`.`Cliente` WHERE (`carros`.`Cliente`.`cod_cliente` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`Aluga` (`id`,`dt_fim`,`Placa`,`cod_cliente`,`dt_inicio`) VALUES (?,?,?,?,?)
SELECT `carros`.`Aluga`.`id`, `carros`.`Aluga`.`dt_fim`, `carros`.`Aluga`.`Placa`, `carros`.`Aluga`.`cod_cliente`, `carros`.`Aluga`.`dt_inicio` FROM `carros`.`Aluga` WHERE `carros`.`Aluga`.`id` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Cliente`.`cod_cliente` FROM `carros`.`Cliente` WHERE (`carros`.`Cliente`.`cod_cliente` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`Aluga` (`id`,`dt_fim`,`Placa`,`cod_cliente`,`dt_inicio`) VALUES (?,?,?,?,?)
SELECT `carros`.`Aluga`.`id`, `carros`.`Aluga`.`dt_fim`, `carros`.`Aluga`.`Placa`, `carros`.`Aluga`.`cod_cliente`, `carros`.`Aluga`.`dt_inicio` FROM `carros`.`Aluga` WHERE `carros`.`Aluga`.`id` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Cliente`.`cod_cliente` FROM `carros`.`Cliente` WHERE (`carros`.`Cliente`.`cod_cliente` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`Aluga` (`id`,`dt_fim`,`Placa`,`cod_cliente`,`dt_inicio`) VALUES (?,?,?,?,?)
SELECT `carros`.`Aluga`.`id`, `carros`.`Aluga`.`dt_fim`, `carros`.`Aluga`.`Placa`, `carros`.`Aluga`.`cod_cliente`, `carros`.`Aluga`.`dt_inicio` FROM `carros`.`Aluga` WHERE `carros`.`Aluga`.`id` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Cliente`.`cod_cliente` FROM `carros`.`Cliente` WHERE (`carros`.`Cliente`.`cod_cliente` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`Aluga` (`id`,`dt_fim`,`Placa`,`cod_cliente`,`dt_inicio`) VALUES (?,?,?,?,?)
SELECT `carros`.`Aluga`.`id`, `carros`.`Aluga`.`dt_fim`, `carros`.`Aluga`.`Placa`, `carros`.`Aluga`.`cod_cliente`, `carros`.`Aluga`.`dt_inicio` FROM `carros`.`Aluga` WHERE `carros`.`Aluga`.`id` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Cliente`.`cod_cliente` FROM `carros`.`Cliente` WHERE (`carros`.`Cliente`.`cod_cliente` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`Aluga` (`id`,`dt_fim`,`Placa`,`cod_cliente`,`dt_inicio`) VALUES (?,?,?,?,?)
SELECT `carros`.`Aluga`.`id`, `carros`.`Aluga`.`dt_fim`, `carros`.`Aluga`.`Placa`, `carros`.`Aluga`.`cod_cliente`, `carros`.`Aluga`.`dt_inicio` FROM `carros`.`Aluga` WHERE `carros`.`Aluga`.`id` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Cliente`.`cod_cliente` FROM `carros`.`Cliente` WHERE (`carros`.`Cliente`.`cod_cliente` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`Aluga` (`id`,`dt_fim`,`Placa`,`cod_cliente`,`dt_inicio`) VALUES (?,?,?,?,?)
SELECT `carros`.`Aluga`.`id`, `carros`.`Aluga`.`dt_fim`, `carros`.`Aluga`.`Placa`, `carros`.`Aluga`.`cod_cliente`, `carros`.`Aluga`.`dt_inicio` FROM `carros`.`Aluga` WHERE `carros`.`Aluga`.`id` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Cliente`.`cod_cliente` FROM `carros`.`Cliente` WHERE (`carros`.`Cliente`.`cod_cliente` = ? AND 1=1)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`Aluga` (`id`,`dt_fim`,`Placa`,`cod_cliente`,`dt_inicio`) VALUES (?,?,?,?,?)
SELECT `carros`.`Aluga`.`id`, `carros`.`Aluga`.`dt_fim`, `carros`.`Aluga`.`Placa`, `carros`.`Aluga`.`cod_cliente`, `carros`.`Aluga`.`dt_inicio` FROM `carros`.`Aluga` WHERE `carros`.`Aluga`.`id` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Aluga`.`id`, `carros`.`Aluga`.`dt_fim`, `carros`.`Aluga`.`Placa`, `carros`.`Aluga`.`cod_cliente`, `carros`.`Aluga`.`dt_inicio` FROM `carros`.`Aluga` WHERE 1=1
SELECT `carros`.`ServicoExtra`.`ID`, `carros`.`ServicoExtra`.`Descricao`, `carros`.`ServicoExtra`.`Valor`, `carros`.`ServicoExtra`.`idTipoServico` FROM `carros`.`ServicoExtra` WHERE 1=1
SELECT `carros`.`ServicoExtra`.`ID` FROM `carros`.`ServicoExtra` WHERE (`carros`.`ServicoExtra`.`ID` = ? AND 1=1)
SELECT `carros`.`Aluga`.`id` FROM `carros`.`Aluga` WHERE (`carros`.`Aluga`.`id` = ? AND 1=1)
INSERT INTO `carros`.`AluguelServico` (`id_aluguelService`,`idAluga`,`idServicoExtra`) VALUES (?,?,?)
SELECT `carros`.`AluguelServico`.`id_aluguelService`, `carros`.`AluguelServico`.`idAluga`, `carros`.`AluguelServico`.`idServicoExtra` FROM `carros`.`AluguelServico` WHERE `carros`.`AluguelServico`.`id_aluguelService` = ? LIMIT ? OFFSET ?
SELECT `carros`.`ServicoExtra`.`ID` FROM `carros`.`ServicoExtra` WHERE (`carros`.`ServicoExtra`.`ID` = ? AND 1=1)
SELECT `carros`.`Aluga`.`id` FROM `carros`.`Aluga` WHERE (`carros`.`Aluga`.`id` = ? AND 1=1)
INSERT INTO `carros`.`AluguelServico` (`id_aluguelService`,`idAluga`,`idServicoExtra`) VALUES (?,?,?)
SELECT `carros`.`AluguelServico`.`id_aluguelService`, `carros`.`AluguelServico`.`idAluga`, `carros`.`AluguelServico`.`idServicoExtra` FROM `carros`.`AluguelServico` WHERE `carros`.`AluguelServico`.`id_aluguelService` = ? LIMIT ? OFFSET ?
SELECT `carros`.`ServicoExtra`.`ID` FROM `carros`.`ServicoExtra` WHERE (`carros`.`ServicoExtra`.`ID` = ? AND 1=1)
SELECT `carros`.`Aluga`.`id` FROM `carros`.`Aluga` WHERE (`carros`.`Aluga`.`id` = ? AND 1=1)
INSERT INTO `carros`.`AluguelServico` (`id_aluguelService`,`idAluga`,`idServicoExtra`) VALUES (?,?,?)
SELECT `carros`.`AluguelServico`.`id_aluguelService`, `carros`.`AluguelServico`.`idAluga`, `carros`.`AluguelServico`.`idServicoExtra` FROM `carros`.`AluguelServico` WHERE `carros`.`AluguelServico`.`id_aluguelService` = ? LIMIT ? OFFSET ?
SELECT `carros`.`ServicoExtra`.`ID` FROM `carros`.`ServicoExtra` WHERE (`carros`.`ServicoExtra`.`ID` = ? AND 1=1)
SELECT `carros`.`Aluga`.`id` FROM `carros`.`Aluga` WHERE (`carros`.`Aluga`.`id` = ? AND 1=1)
INSERT INTO `carros`.`AluguelServico` (`id_aluguelService`,`idAluga`,`idServicoExtra`) VALUES (?,?,?)
SELECT `carros`.`AluguelServico`.`id_aluguelService`, `carros`.`AluguelServico`.`idAluga`, `carros`.`AluguelServico`.`idServicoExtra` FROM `carros`.`AluguelServico` WHERE `carros`.`AluguelServico`.`id_aluguelService` = ? LIMIT ? OFFSET ?
SELECT `carros`.`ServicoExtra`.`ID` FROM `carros`.`ServicoExtra` WHERE (`carros`.`ServicoExtra`.`ID` = ? AND 1=1)
SELECT `carros`.`Aluga`.`id` FROM `carros`.`Aluga` WHERE (`carros`.`Aluga`.`id` = ? AND 1=1)
INSERT INTO `carros`.`AluguelServico` (`id_aluguelService`,`idAluga`,`idServicoExtra`) VALUES (?,?,?)
SELECT `carros`.`AluguelServico`.`id_aluguelService`, `carros`.`AluguelServico`.`idAluga`, `carros`.`AluguelServico`.`idServicoExtra` FROM `carros`.`AluguelServico` WHERE `carros`.`AluguelServico`.`id_aluguelService` = ? LIMIT ? OFFSET ?
SELECT `carros`.`ServicoExtra`.`ID` FROM `carros`.`ServicoExtra` WHERE (`carros`.`ServicoExtra`.`ID` = ? AND 1=1)
SELECT `carros`.`Aluga`.`id` FROM `carros`.`Aluga` WHERE (`carros`.`Aluga`.`id` = ? AND 1=1)
INSERT INTO `carros`.`AluguelServico` (`id_aluguelService`,`idAluga`,`idServicoExtra`) VALUES (?,?,?)
SELECT `carros`.`AluguelServico`.`id_aluguelService`, `carros`.`AluguelServico`.`idAluga`, `carros`.`AluguelServico`.`idServicoExtra` FROM `carros`.`AluguelServico` WHERE `carros`.`AluguelServico`.`id_aluguelService` = ? LIMIT ? OFFSET ?
SELECT `carros`.`ServicoExtra`.`ID` FROM `carros`.`ServicoExtra` WHERE (`carros`.`ServicoExtra`.`ID` = ? AND 1=1)
SELECT `carros`.`Aluga`.`id` FROM `carros`.`Aluga` WHERE (`carros`.`Aluga`.`id` = ? AND 1=1)
INSERT INTO `carros`.`AluguelServico` (`id_aluguelService`,`idAluga`,`idServicoExtra`) VALUES (?,?,?)
SELECT `carros`.`AluguelServico`.`id_aluguelService`, `carros`.`AluguelServico`.`idAluga`, `carros`.`AluguelServico`.`idServicoExtra` FROM `carros`.`AluguelServico` WHERE `carros`.`AluguelServico`.`id_aluguelService` = ? LIMIT ? OFFSET ?
SELECT `carros`.`ServicoExtra`.`ID` FROM `carros`.`ServicoExtra` WHERE (`carros`.`ServicoExtra`.`ID` = ? AND 1=1)
SELECT `carros`.`Aluga`.`id` FROM `carros`.`Aluga` WHERE (`carros`.`Aluga`.`id` = ? AND 1=1)
INSERT INTO `carros`.`AluguelServico` (`id_aluguelService`,`idAluga`,`idServicoExtra`) VALUES (?,?,?)
SELECT `carros`.`AluguelServico`.`id_aluguelService`, `carros`.`AluguelServico`.`idAluga`, `carros`.`AluguelServico`.`idServicoExtra` FROM `carros`.`AluguelServico` WHERE `carros`.`AluguelServico`.`id_aluguelService` = ? LIMIT ? OFFSET ?
SELECT `carros`.`ServicoExtra`.`ID` FROM `carros`.`ServicoExtra` WHERE (`carros`.`ServicoExtra`.`ID` = ? AND 1=1)
SELECT `carros`.`Aluga`.`id` FROM `carros`.`Aluga` WHERE (`carros`.`Aluga`.`id` = ? AND 1=1)
INSERT INTO `carros`.`AluguelServico` (`id_aluguelService`,`idAluga`,`idServicoExtra`) VALUES (?,?,?)
SELECT `carros`.`AluguelServico`.`id_aluguelService`, `carros`.`AluguelServico`.`idAluga`, `carros`.`AluguelServico`.`idServicoExtra` FROM `carros`.`AluguelServico` WHERE `carros`.`AluguelServico`.`id_aluguelService` = ? LIMIT ? OFFSET ?
SELECT `carros`.`ServicoExtra`.`ID` FROM `carros`.`ServicoExtra` WHERE (`carros`.`ServicoExtra`.`ID` = ? AND 1=1)
SELECT `carros`.`Aluga`.`id` FROM `carros`.`Aluga` WHERE (`carros`.`Aluga`.`id` = ? AND 1=1)
INSERT INTO `carros`.`AluguelServico` (`id_aluguelService`,`idAluga`,`idServicoExtra`) VALUES (?,?,?)
SELECT `carros`.`AluguelServico`.`id_aluguelService`, `carros`.`AluguelServico`.`idAluga`, `carros`.`AluguelServico`.`idServicoExtra` FROM `carros`.`AluguelServico` WHERE `carros`.`AluguelServico`.`id_aluguelService` = ? LIMIT ? OFFSET ?
SELECT `carros`.`ServicoExtra`.`ID` FROM `carros`.`ServicoExtra` WHERE (`carros`.`ServicoExtra`.`ID` = ? AND 1=1)
SELECT `carros`.`Aluga`.`id` FROM `carros`.`Aluga` WHERE (`carros`.`Aluga`.`id` = ? AND 1=1)
INSERT INTO `carros`.`AluguelServico` (`id_aluguelService`,`idAluga`,`idServicoExtra`) VALUES (?,?,?)
SELECT `carros`.`AluguelServico`.`id_aluguelService`, `carros`.`AluguelServico`.`idAluga`, `carros`.`AluguelServico`.`idServicoExtra` FROM `carros`.`AluguelServico` WHERE `carros`.`AluguelServico`.`id_aluguelService` = ? LIMIT ? OFFSET ?
SELECT `carros`.`ServicoExtra`.`ID` FROM `carros`.`ServicoExtra` WHERE (`carros`.`ServicoExtra`.`ID` = ? AND 1=1)
SELECT `carros`.`Aluga`.`id` FROM `carros`.`Aluga` WHERE (`carros`.`Aluga`.`id` = ? AND 1=1)
INSERT INTO `carros`.`AluguelServico` (`id_aluguelService`,`idAluga`,`idServicoExtra`) VALUES (?,?,?)
SELECT `carros`.`AluguelServico`.`id_aluguelService`, `carros`.`AluguelServico`.`idAluga`, `carros`.`AluguelServico`.`idServicoExtra` FROM `carros`.`AluguelServico` WHERE `carros`.`AluguelServico`.`id_aluguelService` = ? LIMIT ? OFFSET ?
SELECT `carros`.`ServicoExtra`.`ID` FROM `carros`.`ServicoExtra` WHERE (`carros`.`ServicoExtra`.`ID` = ? AND 1=1)
SELECT `carros`.`Aluga`.`id` FROM `carros`.`Aluga` WHERE (`carros`.`Aluga`.`id` = ? AND 1=1)
INSERT INTO `carros`.`AluguelServico` (`id_aluguelService`,`idAluga`,`idServicoExtra`) VALUES (?,?,?)
SELECT `carros`.`AluguelServico`.`id_aluguelService`, `carros`.`AluguelServico`.`idAluga`, `carros`.`AluguelServico`.`idServicoExtra` FROM `carros`.`AluguelServico` WHERE `carros`.`AluguelServico`.`id_aluguelService` = ? LIMIT ? OFFSET ?
SELECT `carros`.`ServicoExtra`.`ID` FROM `carros`.`ServicoExtra` WHERE (`carros`.`ServicoExtra`.`ID` = ? AND 1=1)
SELECT `carros`.`Aluga`.`id` FROM `carros`.`Aluga` WHERE (`carros`.`Aluga`.`id` = ? AND 1=1)
INSERT INTO `carros`.`AluguelServico` (`id_aluguelService`,`idAluga`,`idServicoExtra`) VALUES (?,?,?)
SELECT `carros`.`AluguelServico`.`id_aluguelService`, `carros`.`AluguelServico`.`idAluga`, `carros`.`AluguelServico`.`idServicoExtra` FROM `carros`.`AluguelServico` WHERE `carros`.`AluguelServico`.`id_aluguelService` = ? LIMIT ? OFFSET ?
SELECT `carros`.`ServicoExtra`.`ID` FROM `carros`.`ServicoExtra` WHERE (`carros`.`ServicoExtra`.`ID` = ? AND 1=1)
SELECT `carros`.`Aluga`.`id` FROM `carros`.`Aluga` WHERE (`carros`.`Aluga`.`id` = ? AND 1=1)
INSERT INTO `carros`.`AluguelServico` (`id_aluguelService`,`idAluga`,`idServicoExtra`) VALUES (?,?,?)
SELECT `carros`.`AluguelServico`.`id_aluguelService`, `carros`.`AluguelServico`.`idAluga`, `carros`.`AluguelServico`.`idServicoExtra` FROM `carros`.`AluguelServico` WHERE `carros`.`AluguelServico`.`id_aluguelService` = ? LIMIT ? OFFSET ?
SELECT `carros`.`ServicoExtra`.`ID` FROM `carros`.`ServicoExtra` WHERE (`carros`.`ServicoExtra`.`ID` = ? AND 1=1)
SELECT `carros`.`Aluga`.`id` FROM `carros`.`Aluga` WHERE (`carros`.`Aluga`.`id` = ? AND 1=1)
INSERT INTO `carros`.`AluguelServico` (`id_aluguelService`,`idAluga`,`idServicoExtra`) VALUES (?,?,?)
SELECT `carros`.`AluguelServico`.`id_aluguelService`, `carros`.`AluguelServico`.`idAluga`, `carros`.`AluguelServico`.`idServicoExtra` FROM `carros`.`AluguelServico` WHERE `carros`.`AluguelServico`.`id_aluguelService` = ? LIMIT ? OFFSET ?
SELECT `carros`.`ServicoExtra`.`ID` FROM `carros`.`ServicoExtra` WHERE (`carros`.`ServicoExtra`.`ID` = ? AND 1=1)
SELECT `carros`.`Aluga`.`id` FROM `carros`.`Aluga` WHERE (`carros`.`Aluga`.`id` = ? AND 1=1)
INSERT INTO `carros`.`AluguelServico` (`id_aluguelService`,`idAluga`,`idServicoExtra`) VALUES (?,?,?)
SELECT `carros`.`AluguelServico`.`id_aluguelService`, `carros`.`AluguelServico`.`idAluga`, `carros`.`AluguelServico`.`idServicoExtra` FROM `carros`.`AluguelServico` WHERE `carros`.`AluguelServico`.`id_aluguelService` = ? LIMIT ? OFFSET ?
SELECT `carros`.`ServicoExtra`.`ID` FROM `carros`.`ServicoExtra` WHERE (`carros`.`ServicoExtra`.`ID` = ? AND 1=1)
SELECT `carros`.`Aluga`.`id` FROM `carros`.`Aluga` WHERE (`carros`.`Aluga`.`id` = ? AND 1=1)
INSERT INTO `carros`.`AluguelServico` (`id_aluguelService`,`idAluga`,`idServicoExtra`) VALUES (?,?,?)
SELECT `carros`.`AluguelServico`.`id_aluguelService`, `carros`.`AluguelServico`.`idAluga`, `carros`.`AluguelServico`.`idServicoExtra` FROM `carros`.`AluguelServico` WHERE `carros`.`AluguelServico`.`id_aluguelService` = ? LIMIT ? OFFSET ?
SELECT `carros`.`ServicoExtra`.`ID` FROM `carros`.`ServicoExtra` WHERE (`carros`.`ServicoExtra`.`ID` = ? AND 1=1)
SELECT `carros`.`Aluga`.`id` FROM `carros`.`Aluga` WHERE (`carros`.`Aluga`.`id` = ? AND 1=1)
INSERT INTO `carros`.`AluguelServico` (`id_aluguelService`,`idAluga`,`idServicoExtra`) VALUES (?,?,?)
SELECT `carros`.`AluguelServico`.`id_aluguelService`, `carros`.`AluguelServico`.`idAluga`, `carros`.`AluguelServico`.`idServicoExtra` FROM `carros`.`AluguelServico` WHERE `carros`.`AluguelServico`.`id_aluguelService` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Veiculo`.`Placa`, `carros`.`Veiculo`.`Chassi`, `carros`.`Veiculo`.`NumeroMotor`, `carros`.`Veiculo`.`cor`, `carros`.`Veiculo`.`tamanho`, `carros`.`Veiculo`.`N_Passageiros`, `carros`.`Veiculo`.`N_portas`, `carros`.`Veiculo`.`Tipo`, `carros`.`Veiculo`.`Capacidade_Carga`, `carros`.`Veiculo`.`idTipoVeiculo`, `carros`.`Veiculo`.`idFilial` FROM `carros`.`Veiculo` WHERE 1=1
INSERT INTO `carros`.`Manutencao` (`cod`,`Horas_Limpeza`,`RevisaoEntrega`,`Data_Revisao`) VALUES (?,?,?,?)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_veiculo_manutencao` (`cod`,`Placa`) VALUES (?,?)
SELECT `carros`.`Manutencao`.`cod`, `carros`.`Manutencao`.`Horas_Limpeza`, `carros`.`Manutencao`.`RevisaoEntrega`, `carros`.`Manutencao`.`Data_Revisao` FROM `carros`.`Manutencao` WHERE `carros`.`Manutencao`.`cod` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Manutencao` (`cod`,`Horas_Limpeza`,`RevisaoEntrega`,`Data_Revisao`) VALUES (?,?,?,?)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_veiculo_manutencao` (`cod`,`Placa`) VALUES (?,?)
SELECT `carros`.`Manutencao`.`cod`, `carros`.`Manutencao`.`Horas_Limpeza`, `carros`.`Manutencao`.`RevisaoEntrega`, `carros`.`Manutencao`.`Data_Revisao` FROM `carros`.`Manutencao` WHERE `carros`.`Manutencao`.`cod` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Manutencao` (`cod`,`Horas_Limpeza`,`RevisaoEntrega`,`Data_Revisao`) VALUES (?,?,?,?)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_veiculo_manutencao` (`cod`,`Placa`) VALUES (?,?)
SELECT `carros`.`Manutencao`.`cod`, `carros`.`Manutencao`.`Horas_Limpeza`, `carros`.`Manutencao`.`RevisaoEntrega`, `carros`.`Manutencao`.`Data_Revisao` FROM `carros`.`Manutencao` WHERE `carros`.`Manutencao`.`cod` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Manutencao` (`cod`,`Horas_Limpeza`,`RevisaoEntrega`,`Data_Revisao`) VALUES (?,?,?,?)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_veiculo_manutencao` (`cod`,`Placa`) VALUES (?,?)
SELECT `carros`.`Manutencao`.`cod`, `carros`.`Manutencao`.`Horas_Limpeza`, `carros`.`Manutencao`.`RevisaoEntrega`, `carros`.`Manutencao`.`Data_Revisao` FROM `carros`.`Manutencao` WHERE `carros`.`Manutencao`.`cod` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Manutencao` (`cod`,`Horas_Limpeza`,`RevisaoEntrega`,`Data_Revisao`) VALUES (?,?,?,?)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_veiculo_manutencao` (`cod`,`Placa`) VALUES (?,?)
SELECT `carros`.`Manutencao`.`cod`, `carros`.`Manutencao`.`Horas_Limpeza`, `carros`.`Manutencao`.`RevisaoEntrega`, `carros`.`Manutencao`.`Data_Revisao` FROM `carros`.`Manutencao` WHERE `carros`.`Manutencao`.`cod` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Manutencao` (`cod`,`Horas_Limpeza`,`RevisaoEntrega`,`Data_Revisao`) VALUES (?,?,?,?)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_veiculo_manutencao` (`cod`,`Placa`) VALUES (?,?)
SELECT `carros`.`Manutencao`.`cod`, `carros`.`Manutencao`.`Horas_Limpeza`, `carros`.`Manutencao`.`RevisaoEntrega`, `carros`.`Manutencao`.`Data_Revisao` FROM `carros`.`Manutencao` WHERE `carros`.`Manutencao`.`cod` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Manutencao` (`cod`,`Horas_Limpeza`,`RevisaoEntrega`,`Data_Revisao`) VALUES (?,?,?,?)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_veiculo_manutencao` (`cod`,`Placa`) VALUES (?,?)
SELECT `carros`.`Manutencao`.`cod`, `carros`.`Manutencao`.`Horas_Limpeza`, `carros`.`Manutencao`.`RevisaoEntrega`, `carros`.`Manutencao`.`Data_Revisao` FROM `carros`.`Manutencao` WHERE `carros`.`Manutencao`.`cod` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Manutencao` (`cod`,`Horas_Limpeza`,`RevisaoEntrega`,`Data_Revisao`) VALUES (?,?,?,?)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_veiculo_manutencao` (`cod`,`Placa`) VALUES (?,?)
SELECT `carros`.`Manutencao`.`cod`, `carros`.`Manutencao`.`Horas_Limpeza`, `carros`.`Manutencao`.`RevisaoEntrega`, `carros`.`Manutencao`.`Data_Revisao` FROM `carros`.`Manutencao` WHERE `carros`.`Manutencao`.`cod` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Manutencao` (`cod`,`Horas_Limpeza`,`RevisaoEntrega`,`Data_Revisao`) VALUES (?,?,?,?)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_veiculo_manutencao` (`cod`,`Placa`) VALUES (?,?)
SELECT `carros`.`Manutencao`.`cod`, `carros`.`Manutencao`.`Horas_Limpeza`, `carros`.`Manutencao`.`RevisaoEntrega`, `carros`.`Manutencao`.`Data_Revisao` FROM `carros`.`Manutencao` WHERE `carros`.`Manutencao`.`cod` = ? LIMIT ? OFFSET ?
INSERT INTO `carros`.`Manutencao` (`cod`,`Horas_Limpeza`,`RevisaoEntrega`,`Data_Revisao`) VALUES (?,?,?,?)
SELECT `carros`.`Veiculo`.`Placa` FROM `carros`.`Veiculo` WHERE (`carros`.`Veiculo`.`Placa` = ? AND 1=1)
INSERT INTO `carros`.`tb_veiculo_manutencao` (`cod`,`Placa`) VALUES (?,?)
SELECT `carros`.`Manutencao`.`cod`, `carros`.`Manutencao`.`Horas_Limpeza`, `carros`.`Manutencao`.`RevisaoEntrega`, `carros`.`Manutencao`.`Data_Revisao` FROM `carros`.`Manutencao` WHERE `carros`.`Manutencao`.`cod` = ? LIMIT ? OFFSET ?
SELECT `carros`.`Veiculo`.`Placa`, `carros`.`Veiculo`.`Chassi`, `carros`.`Veiculo`.`NumeroMotor`, `carros`.`Veiculo`.`cor`, `carros`.`Veiculo`.`tamanho`, `carros`.`Veiculo`.`N_Passageiros`, `carros`.`Veiculo`.`N_portas`, `carros`.`Veiculo`.`Tipo`, `carros`.`Veiculo`.`Capacidade_Carga`, `carros`.`Veiculo`.`idTipoVeiculo`, `carros`.`Veiculo`.`idFilial` FROM `carros`.`Veiculo` WHERE 1=1
SELECT `carros`.`Manutencao`.`cod`, `carros`.`Manutencao`.`Horas_Limpeza`, `carros`.`Manutencao`.`RevisaoEntrega`, `carros`.`Manutencao`.`Data_Revisao` FROM `carros`.`Manutencao` WHERE 1=1
