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
      const existingAcessorio = await prisma.acessorios.findUnique({
        where: { Cod: acessorio.Cod },
      })

      if (!existingAcessorio) {
        await prisma.acessorios.create({
          data: acessorio,
        })
      }
    }

    console.log('Acessorios seeded successfully')
  } catch (error) {
    console.error('Error seeding Acessorios:', error)
  } finally {
    await prisma.$disconnect()
  }
}

async function seedTbCarroAcessorios() {
  const veiculos = await prisma.veiculo.findMany()
  const acessorios = await prisma.acessorios.findMany()

  const tbCarroAcessorios: Prisma.tb_carroacessoriosCreateInput[] = []

  veiculos.forEach((veiculo) => {
    const numAcessorios = chance.integer({ min: 1, max: 3 })

    for (let i = 0; i < numAcessorios; i++) {
      const acessorio = chance.pickone(acessorios)

      const existingRecord = tbCarroAcessorios.find(
        (item) =>
          item.Veiculo.connect?.Placa === veiculo.Placa &&
          item.Acessorios.connect?.Cod === acessorio.Cod,
      )

      if (!existingRecord) {
        tbCarroAcessorios.push({
          Veiculo: {
            connect: { Placa: veiculo.Placa! },
          },
          Acessorios: {
            connect: { Cod: acessorio.Cod! },
          },
        })
      }
    }
  })

  try {
    for (const carroAcessorio of tbCarroAcessorios) {
      await prisma.tb_carroacessorios.upsert({
        where: {
          idAutomovel_Cod: {
            idAutomovel: carroAcessorio.Veiculo.connect?.Placa!,
            Cod: carroAcessorio.Acessorios.connect?.Cod!,
          },
        },
        create: carroAcessorio,
        update: {},
      })
    }

    console.log('tb_carroacessorios seeded successfully')
  } catch (error) {
    console.error('Error seeding tb_carroacessorios:', error)
  } finally {
    await prisma.$disconnect()
  }
}

async function seedAluga() {
  const veiculos = await prisma.veiculo.findMany()
  const clientes = await prisma.cliente.findMany()

  const alugas: Prisma.AlugaCreateInput[] = Array.from({ length: 10 }, () => {
    const veiculo = veiculos[Math.floor(Math.random() * veiculos.length)]
    const cliente = clientes[Math.floor(Math.random() * clientes.length)]
    const dataInicio = new Date(`2023-01-01T00:00:00Z`)
    const dataFim = new Date(
      dataInicio.getTime() + Math.floor(Math.random() * 7) * 24 * 60 * 60 * 1000,
    )

    return {
      dt_inicio: dataInicio,
      dt_fim: dataFim,
      Veiculo: {
        connect: { Placa: veiculo.Placa },
      },
      Cliente: {
        connect: { cod_cliente: cliente.cod_cliente },
      },
    }
  })

  try {
    for (const aluga of alugas) {
      await prisma.aluga.create({
        data: aluga,
      })
    }

    console.log('Aluga seeded successfully')
  } catch (error) {
    console.error('Error seeding Aluga:', error)
  } finally {
    await prisma.$disconnect()
  }
}

async function seedAluguelServico() {
  const alugas = await prisma.aluga.findMany()
  const servicosExtras = await prisma.servicoExtra.findMany()

  const aluguelServicos: Prisma.AluguelServicoCreateInput[] = []

  alugas.forEach((aluga) => {
    const numServicos = Math.floor(Math.random() * 3) + 1

    for (let i = 0; i < numServicos; i++) {
      const servico = servicosExtras[Math.floor(Math.random() * servicosExtras.length)]

      aluguelServicos.push({
        Aluga: {
          connect: { id: aluga.id },
        },
        ServicoExtra: {
          connect: { ID: servico.ID },
        },
      })
    }
  })

  try {
    for (const aluguelServico of aluguelServicos) {
      await prisma.aluguelServico.create({
        data: aluguelServico,
      })
    }

    console.log('AluguelServico seeded successfully')
  } catch (error) {
    console.error('Error seeding AluguelServico:', error)
  } finally {
    await prisma.$disconnect()
  }
}

async function seedManutencao() {
  const veiculos = await prisma.veiculo.findMany()

  const manutencoes: Prisma.ManutencaoCreateInput[] = []

  veiculos.forEach((veiculo) => {
    const horasLimpeza = Math.floor(Math.random() * 10) + 1
    const revisaoEntrega = chance.sentence()
    const dataRevisao = chance.date({ year: 2023 })

    manutencoes.push({
      Horas_Limpeza: horasLimpeza,
      RevisaoEntrega: revisaoEntrega,
      Data_Revisao: dataRevisao,
      tb_veiculo_manutencao: {
        create: {
          Veiculo: {
            connect: {
              Placa: veiculo.Placa,
            },
          },
        },
      },
    })
  })

  try {
    for (const manutencao of manutencoes) {
      await prisma.manutencao.create({
        data: manutencao,
      })
    }

    console.log('Manutencao seeded successfully')
  } catch (error) {
    console.error('Error seeding Manutencao:', error)
  } finally {
    await prisma.$disconnect()
  }
}

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
