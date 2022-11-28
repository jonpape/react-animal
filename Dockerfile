FROM node:alpine
run apt-get -y update
RUN apt-get -y install git
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
COPY ./ ./
RUN npm i
CMD ["npm", "run", "start"]