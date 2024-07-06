import { Prisma, PrismaClient } from '@prisma/client'
import Chance from 'chance'
import * as fs from 'fs'
import { promisify } from 'util'

const prisma = new PrismaClient({
  log: [
    {
      emit: 'event',
      level: 'query',
    },
  ],
})
const chance = new Chance()
const writeFileAsync = promisify(fs.writeFile)

async function seedTipoServico() {
  const tiposServico = [
    { descricao: 'Limpeza' },
    { descricao: 'Troca de óleo' },
    { descricao: 'Revisão completa' },
  ]

  for (const tipo of tiposServico) {
    await prisma.tipoServico.create({
      data: tipo,
    })
  }

  console.log('TipoServico seeded successfully')
}

async function seedServicoExtra() {
  const servicosExtras = [
    { Descricao: 'Alinhamento de rodas', Valor: 50.0, TipoServico: 1 },
    { Descricao: 'Balanceamento de pneus', Valor: 30.0, TipoServico: 2 },
    { Descricao: 'Lavagem a seco', Valor: 40.0, TipoServico: 1 },
  ]

  for (const servico of servicosExtras) {
    await prisma.servicoExtra.create({
      data: {
        Descricao: servico.Descricao,
        Valor: servico.Valor,
        TipoServico: {
          connect: { id_tipo: servico.TipoServico },
        },
      },
    })
  }

  console.log('ServicoExtra seeded successfully')
}

async function seedTipoVeiculo() {
  const tiposVeiculo = [{ Tipo: 'Sedan' }, { Tipo: 'SUV' }, { Tipo: 'Hatchback' }]

  for (const tipo of tiposVeiculo) {
    await prisma.tipoVeiculo.create({
      data: tipo,
    })
  }

  console.log('TipoVeiculo seeded successfully')
}

async function seedFilial() {
  const filiais = [{ nome: 'Filial A' }, { nome: 'Filial B' }, { nome: 'Filial C' }]

  for (const filial of filiais) {
    await prisma.filial.create({
      data: filial,
    })
  }

  console.log('Filial seeded successfully')
}

async function seedCliente() {
  const clientes: Prisma.ClienteCreateInput[] = Array.from({ length: 10 }, () => {
    const dataNascimento = chance.birthday({ year: chance.integer({ min: 1980, max: 2020 }) })
    const formattedDateNascimento = new Date(dataNascimento)

    return {
      nome: chance.name(),
      CNPJ: chance.integer({ min: 10000000000000, max: 99999999999999 }).toString(),
      inscricao_Estadual: chance.integer({ min: 100000000, max: 999999999 }).toString(),
      cpf: chance.string({ length: 11, pool: '0123456789' }),
      sexo: chance.pickone(['M', 'F']),
      data_nascimento: formattedDateNascimento,
      num_habilitacao: chance.integer({ min: 100000000, max: 999999999 }).toString(),
      logradouro: chance.street(),
      numero: chance.integer({ min: 1, max: 100 }).toString(),
      cidade: chance.city(),
      bairro: chance.word(),
      CEP: chance.zip(),
    }
  })

  try {
    for (const cliente of clientes) {
      await prisma.cliente.create({
        data: cliente,
      })
    }

    console.log('Cliente seeded successfully')
  } catch (error) {
    console.error('Error seeding Cliente:', error)
  } finally {
    await prisma.$disconnect()
  }
}

async function seedVeiculo() {
  const tiposVeiculo = await prisma.tipoVeiculo.findMany()
  const filiais = await prisma.filial.findMany()
  const cores = ['Preto', 'Branco', 'Prata', 'Vermelho', 'Azul', 'Verde', 'Cinza', 'Amarelo']

  const veiculos: Prisma.VeiculoCreateInput[] = Array.from({ length: 10 }, () => {
    const tipoVeiculo = chance.pickone(tiposVeiculo)
    const filial = chance.pickone(filiais)

    return {
      Placa: chance
        .string({ length: 7, pool: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789' })
        .toUpperCase(),
      Chassi: chance.integer({ min: 10000000000000000, max: 99999999999999999 }).toString(),
      NumeroMotor: chance.integer({ min: 1000000000, max: 9999999999 }).toString(),
      cor: chance.pickone(cores),
      tamanho: chance.pickone(['Pequeno', 'Médio', 'Grande']),
      N_Passageiros: chance.integer({ min: 2, max: 7 }),
      N_portas: chance.integer({ min: 2, max: 5 }),
      Tipo: chance.pickone(['Sedan', 'SUV', 'Hatchback']),
      Capacidade_Carga: chance.integer({ min: 300, max: 2000 }),
      TipoVeiculo: { connect: { cod: tipoVeiculo.cod } },
      Filial: { connect: { id_filial: filial.id_filial } },
    }
  })

  try {
    for (const veiculo of veiculos) {
      await prisma.veiculo.create({
        data: veiculo,
      })
    }

    console.log('Veiculo seeded successfully')
  } catch (error) {
    console.error('Error seeding Veiculo:', error)
  } finally {
    await prisma.$disconnect()
  }
}

async function seedAcessorios() {
  const tiposAcessorios = ['Tapete', 'Rádio', 'GPS', 'Protetor de banco', 'Câmera de ré']

  const acessorios: Prisma.AcessoriosCreateInput[] = tiposAcessorios.map((tipo, index) => ({
    Cod: index + 1,
    Tipo: tipo,
  }))

  try {
    for (const acessorio of acessorios) {
      await prisma.acessorios.create({
        data: acessorio,
      })
    }

    console.log('Acessorios seeded successfully')
  } catch (error) {
    console.error('Error seeding Acessorios:', error)
  } finally {
    await prisma.$disconnect()
  }
}

async function seedTbCarroAcessorios() {}

async function seedAluga() {}

async function seedAluguelServico() {}

async function seedManutencao() {}

async function seedTbVeiculoManutencao() {}

async function logQueriesToFile(query: string) {
  try {
    await writeFileAsync('prisma_queries.sql', `${query.trim()}\n`, { flag: 'a' })
  } catch (error) {
    console.error('Error writing to file:', error)
  }
}

async function main() {
  prisma.$on('query', async (event) => {
    if (!event.query.startsWith('BEGIN') && !event.query.startsWith('COMMIT')) {
      await logQueriesToFile(event.query)
    }
  })

  try {
    await seedTipoServico()
    await seedServicoExtra()
    await seedTipoVeiculo()
    await seedFilial()
    await seedCliente()
    await seedVeiculo()
    await seedAcessorios()
    await seedTbCarroAcessorios()
    await seedAluga()
    await seedAluguelServico()
    await seedManutencao()
    await seedTbVeiculoManutencao()

    console.log('All seeding operations completed successfully')
  } catch (error) {
    console.error('Error seeding data:', error)
  } finally {
    await prisma.$disconnect()
  }
}

main()
