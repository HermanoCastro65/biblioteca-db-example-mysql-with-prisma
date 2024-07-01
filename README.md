## Tutorial: Configurando um Projeto do GitHub com Prisma e MySQL
Neste tutorial, vamos aprender a baixar e configurar um projeto do GitHub que utiliza Prisma com um banco de dados MySQL. Vamos seguir os seguintes passos:

### Passo 1: Clonar o Repositório
Primeiro, vamos clonar o repositório do GitHub para a sua máquina local usando o comando git clone. Substitua link pelo URL do repositório do GitHub.

```bash
git clone https://github.com/HermanoCastro65/biblioteca-db-example-mysql-with-prisma.git
```

### Passo 2: Instalar Dependências
Navegue até a pasta do projeto que você acabou de clonar e execute o comando abaixo para instalar as dependências do projeto usando Yarn ou npm, dependendo de sua preferência.

```bash
cd biblioteca-db-example-mysql-with-prisma

yarn install
# ou
npm install
```
### Passo 3: Configurar o Arquivo schema.prisma
O arquivo schema.prisma é usado para configurar o modelo de dados e a conexão com o banco de dados. Certifique-se de que ele está configurado corretamente. No exemplo abaixo, estamos configurando-o para MySQL.

```prisma
// schema.prisma

datasource db {
  provider = "mysql"
  url      = env("DATABASE_URL")
}
```

### Passo 4: Configurar o Arquivo .env
O arquivo .env é usado para armazenar variáveis de ambiente, incluindo as informações de conexão com o banco de dados. Certifique-se de configurar corretamente o DATABASE_URL no arquivo .env. Substitua user, password, localhost, 3306 e carro pelos valores adequados para o seu banco de dados MySQL.

```env
DATABASE_URL="mysql://user:password@localhost:3306/carros"
```

### Passo 5: Criar o Banco de Dados
Agora que o schema.prisma e o arquivo .env estão configurados, você pode criar o banco de dados executando o seguinte comando:

```bash
yarn prisma:push
```
Isso criará o banco de dados MySQL com as tabelas especificadas no schema.prisma.

Agora você configurou com sucesso o projeto do GitHub com Prisma e MySQL e está pronto para começar a desenvolver seu aplicativo. Certifique-se de consultar a documentação do projeto para obter mais informações sobre como usar as funcionalidades específicas do projeto.

Lembre-se de substituir os valores específicos, como URLs de repositório do GitHub e informações de conexão com o banco de dados, pelos valores reais do seu projeto.