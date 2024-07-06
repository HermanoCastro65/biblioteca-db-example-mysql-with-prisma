import * as fs from 'fs'
import * as path from 'path'

const directoryPath = './'

fs.readdir(directoryPath, (err, files) => {
  if (err) {
    console.error('Erro ao ler diretório', err)
    return
  }

  files.forEach((file) => {
    if (file.endsWith('.ts')) {
      const filePath = path.join(directoryPath, file)
      let content = fs.readFileSync(filePath, 'utf8')

      content = content.replace(/\/\/.*$/gm, '')
      fs.writeFileSync(filePath, content, 'utf8')
    }
  })

  console.log('Comentários removidos.')
})
