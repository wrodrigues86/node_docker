# Use a imagem oficial do Node.js versão 14-alpine como base
FROM node:14-alpine

# Crie um diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie os arquivos de dependências
COPY package.json package-lock.json ./

# Instale as dependências do projeto
RUN npm install --production

# Copie o restante do código-fonte para o diretório de trabalho
COPY . .

# Exponha a porta em que o aplicativo Node.js vai rodar
EXPOSE 3000

# Comando para iniciar o aplicativo
CMD ["node", "index.js"]
