import { PrismaClient } from '@prisma/client';
import Chance from 'chance';
import * as fs from 'fs';
import { promisify } from 'util';

const prisma = new PrismaClient({
  log: [
    {
      emit: 'event',
      level: 'query',
    },
  ],
});
const chance = new Chance();
const writeFileAsync = promisify(fs.writeFile);

async function seedTipoServico() {
  const tiposServico = [
    { descricao: 'Limpeza' },
    { descricao: 'Troca de óleo' },
    { descricao: 'Revisão completa' },
  ];

  for (const tipo of tiposServico) {
    await prisma.tipoServico.create({
      data: tipo,
    });
  }

  console.log('TipoServico seeded successfully');
}

async function seedServicoExtra() {
  const servicosExtras = [
    { Descricao: 'Alinhamento de rodas', Valor: 50.0, TipoServico: 1 },
    { Descricao: 'Balanceamento de pneus', Valor: 30.0, TipoServico: 2 },
    { Descricao: 'Lavagem a seco', Valor: 40.0, TipoServico: 1 },
  ];

  for (const servico of servicosExtras) {
    await prisma.servicoExtra.create({
      data: {
        Descricao: servico.Descricao,
        Valor: servico.Valor,
        TipoServico: {
          connect: { id_tipo: servico.TipoServico }, 
        },
      },
    });
  }

  console.log('ServicoExtra seeded successfully');
}

async function seedTipoVeiculo() {
  const tiposVeiculo = [
    { Tipo: 'Sedan' },
    { Tipo: 'SUV' },
    { Tipo: 'Hatchback' },
  ];

  for (const tipo of tiposVeiculo) {
    await prisma.tipoVeiculo.create({
      data: tipo,
    });
  }

  console.log('TipoVeiculo seeded successfully');
}


async function seedFilial() {
  const filiais = [
    { nome: 'Filial A' },
    { nome: 'Filial B' },
    { nome: 'Filial C' },
    { nome: 'Filial D' },
    { nome: 'Filial E' },
    { nome: 'Filial F' },
    { nome: 'Filial G' },
    { nome: 'Filial H' },
    { nome: 'Filial I' },
    { nome: 'Filial J' },
  ];

  for (const filial of filiais) {
    await prisma.filial.create({
      data: filial,
    });
  }

  console.log('Filiais seeded successfully');
}


async function seedCliente() {
  // Implemente a função para seed de Cliente aqui
}

async function seedVeiculo() {
  // Implemente a função para seed de Veiculo aqui
}

async function seedAcessorios() {
  // Implemente a função para seed de Acessorios aqui
}

async function seedTbCarroAcessorios() {
  // Implemente a função para seed de tb_carroacessorios aqui
}

async function seedAluga() {
  // Implemente a função para seed de Aluga aqui
}

async function seedAluguelServico() {
  // Implemente a função para seed de AluguelServico aqui
}

async function seedManutencao() {
  // Implemente a função para seed de Manutencao aqui
}

async function seedTbVeiculoManutencao() {
  // Implemente a função para seed de tb_veiculo_manutencao aqui
}

async function logQueriesToFile(query: string) {
  try {
    await writeFileAsync('prisma_queries.sql', `${query.trim()}\n`, { flag: 'a' }); // 'a' para append (acrescentar)
  } catch (error) {
    console.error('Error writing to file:', error);
  }
}

async function main() {
  prisma.$on('query', async (event) => {
    if (!event.query.startsWith('BEGIN') && !event.query.startsWith('COMMIT')) {
      await logQueriesToFile(event.query);
    }
  });

  try {
    await seedTipoServico();
    await seedServicoExtra();
    await seedTipoVeiculo();
    await seedFilial();
    await seedCliente();
    await seedVeiculo();
    await seedAcessorios();
    await seedTbCarroAcessorios();
    await seedAluga();
    await seedAluguelServico();
    await seedManutencao();
    await seedTbVeiculoManutencao();

    console.log('All seeding operations completed successfully');
  } catch (error) {
    console.error('Error seeding data:', error);
  } finally {
    await prisma.$disconnect();
  }
}

main();
