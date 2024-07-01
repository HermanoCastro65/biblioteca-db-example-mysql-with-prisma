import { PrismaClient } from '@prisma/client';
import Chance from 'chance';

const prisma = new PrismaClient();
const chance = new Chance();

async function seedDatabase() {
  try {
    await seedFiliais();
    await seedTiposVeiculo();
    await seedVeiculos();
    await seedClientes();
    await seedAcessorios();
    await seedServicosExtras();
    await seedAlugueis();
    await seedManutencoes();
    await seedAluguelServicos();

    console.log('Dados inseridos com sucesso!');
  } catch (error) {
    console.error('Erro ao inserir dados:', error);
  } finally {
    await prisma.$disconnect();
  }
}

async function seedFiliais() {
  const filiaisData = [
    { nome: 'Filial A' },
    { nome: 'Filial B' },
    { nome: 'Filial C' },
    // Adicionar mais filiais conforme necessário
  ];

  await prisma.filial.createMany({ data: filiaisData });
}

async function seedTiposVeiculo() {
  const tiposVeiculoData = [
    { Tipo: 'Carro' },
    { Tipo: 'Moto' },
    { Tipo: 'Caminhão' },
    // Adicionar mais tipos de veículo conforme necessário
  ];

  await prisma.tipoVeiculo.createMany({ data: tiposVeiculoData });
}

async function seedVeiculos() {
  const tiposVeiculo = await prisma.tipoVeiculo.findMany();
  const filiais = await prisma.filial.findMany();

  if (filiais.length === 0 || tiposVeiculo.length === 0) {
    throw new Error('Não há filiais ou tipos de veículo cadastrados para associar aos veículos.');
  }

  const veiculosData = [];
  for (let i = 0; i < 10; i++) {
    veiculosData.push({
      Placa: chance.string({ pool: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', length: 7 }),
      Chassi: chance.string({ pool: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', length: 17 }),
      NumeroMotor: chance.string({ pool: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', length: 10 }),
      cor: chance.color(),
      tamanho: chance.pickone(['Pequeno', 'Médio', 'Grande']),
      N_Passageiros: chance.integer({ min: 2, max: 8 }),
      N_portas: chance.integer({ min: 2, max: 5 }),
      Tipo: chance.pickone(tiposVeiculo).Tipo,
      Capacidade_Carga: chance.integer({ min: 500, max: 5000 }),
      idTipoVeiculo: chance.integer({ min: 1, max: tiposVeiculo.length }),
      idFilial: chance.pickone(filiais).id_filial,
    });
  }

  await prisma.veiculo.createMany({ data: veiculosData });
}

async function seedClientes() {
  const clientesData = [];
  for (let i = 0; i < 10; i++) {
    clientesData.push({
      CNPJ: generateCNPJ(),
      inscricao_Estadual: chance.integer({ min: 10000000, max: 99999999 }).toString(),
      cpf: chance.cpf(),
      sexo: chance.pickone(['Masculino', 'Feminino']),
      data_nascimento: chance.birthday(),
      nome: chance.name(),
      num_habilitacao: chance.string({ pool: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', length: 10 }),
      numero: chance.integer({ min: 100, max: 9999 }).toString(),
      logradouro: chance.address(),
      cidade: chance.city(),
      bairro: chance.state(),
      CEP: chance.zip(),
    });
  }

  await prisma.cliente.createMany({ data: clientesData });
}

async function seedAcessorios() {
  const acessoriosData = [
    { Cod: 1, Tipo: 'Rádio' },
    { Cod: 2, Tipo: 'GPS' },
    { Cod: 3, Tipo: 'Tapete' },
    // Adicionar mais acessórios conforme necessário
  ];

  await prisma.acessorios.createMany({ data: acessoriosData, skipDuplicates: true });
}

async function seedServicosExtras() {
  const tiposServico = await prisma.tipoServico.findMany();

  if (tiposServico.length === 0) {
    throw new Error('Não há tipos de serviço cadastrados para associar aos serviços extras.');
  }

  const servicosExtrasData = [
    { Descricao: 'Lavagem', Valor: 50.00, idTipoServico: tiposServico[0].id_tipo },
    { Descricao: 'Troca de Óleo', Valor: 100.00, idTipoServico: tiposServico[1].id_tipo },
    { Descricao: 'Revisão Completa', Valor: 300.00, idTipoServico: tiposServico[2].id_tipo },
    // Adicionar mais serviços extras conforme necessário
  ];

  await prisma.servicoExtra.createMany({ data: servicosExtrasData });
}

async function seedAlugueis() {
  const veiculos = await prisma.veiculo.findMany();
  const clientes = await prisma.cliente.findMany();

  const alugueisData = [];
  for (let i = 0; i < 10; i++) {
    alugueisData.push({
      dt_fim: chance.date({ year: 2024 }),
      Placa: chance.pickone(veiculos).Placa,
      cod_cliente: chance.pickone(clientes).cod_cliente,
      dt_inicio: chance.date({ year: 2023 }),
    });
  }

  await prisma.aluga.createMany({ data: alugueisData });
}

async function seedManutencoes() {
  const veiculos = await prisma.veiculo.findMany();

  const manutencoesData = [];
  for (let i = 0; i < 5; i++) {
    const veiculo = chance.pickone(veiculos);
    manutencoesData.push({
      Horas_Limpeza: chance.integer({ min: 1, max: 10 }),
      RevisaoEntrega: chance.sentence(),
      Data_Revisao: chance.date(),
      tb_veiculo_manutencao: {
        create: {
          Veiculo: {
            connect: { Placa: veiculo.Placa },
          },
        },
      },
    });
  }

  await prisma.manutencao.createMany({ data: manutencoesData });
}


async function seedAluguelServicos() {
  const alugueis = await prisma.aluga.findMany();
  const servicosExtras = await prisma.servicoExtra.findMany();

  const aluguelServicosData = [];
  for (let i = 0; i < 5; i++) {
    aluguelServicosData.push({
      idAluga: chance.pickone(alugueis).id,
      idServicoExtra: chance.pickone(servicosExtras).ID,
    });
  }

  await prisma.aluguelServico.createMany({ data: aluguelServicosData });
}

function generateCNPJ() {
  const n = 9;
  const n1 = Math.round(Math.random() * n);
  const n2 = Math.round(Math.random() * n);
  const n3 = Math.round(Math.random() * n);
  const n4 = Math.round(Math.random() * n);
  const n5 = Math.round(Math.random() * n);
  const n6 = Math.round(Math.random() * n);
  const n7 = Math.round(Math.random() * n);
  const n8 = Math.round(Math.random() * n);
  const n9 = 0;
  const n10 = 0;
  const n11 = 0;
  const n12 = 1;

  const d1 =
    n12 * 2 +
    n11 * 3 +
    n10 * 4 +
    n9 * 5 +
    n8 * 6 +
    n7 * 7 +
    n6 * 8 +
    n5 * 9 +
    n4 * 2 +
    n3 * 3 +
    n2 * 4 +
    n1 * 5;
  const d1mod11 = d1 % 11;
  const dv1 = d1mod11 < 2 ? 0 : 11 - d1mod11;

  const d2 =
    dv1 * 2 +
    n12 * 3 +
    n11 * 4 +
    n10 * 5 +
    n9 * 6 +
    n8 * 7 +
    n7 * 8 +
    n6 * 9 +
    n5 * 2 +
    n4 * 3 +
    n3 * 4 +
    n2 * 5 +
    n1 * 6;
  const d2mod11 = d2 % 11;
  const dv2 = d2mod11 < 2 ? 0 : 11 - d2mod11;

  return '${n1}${n2}.${n3}${n4}${n5}.${n6}${n7}${n8}/${n9}${n10}${n11}${n12}-${dv1}${dv2}';
}

// Executar a função de seed
seedDatabase();
