# Tutorial from postgres to vue

This tutorial explains how to create a progressive web application from a postgres database with vue. This guide has been developed under Ubuntu 18.04 but can be followed in any operative system that supports previous requeriments. As previous requeriments you need to have installed:

1. [Docker](https://www.docker.com/)
2. [Node.js](https://nodejs.org)

## Create a new node application

```bash
mkdir tutorial-postgres-vue
cd tutorial-postgres-vue
npm init -y
```

## Creating a postgres database with docker

In order to create a working database server we can use a docker container. For this purpose we can use docker composer that maintains the docker container working meanwhile we don't indicate the opposite. In the root directory of the project you can find docker-compose.yml file as example. Execute the command below to up postgresql docker container.

```bash
docker-compose up
```

You can verify that docker is working with this sentence:

```bash
docker ps
```

## Connecting to postgresql with typeorm

We will create a new project to add typeorm package.

```bash
  mkdir backend-project
  cd backend-project
  npm init -y
  npm i typeorm ts-node typescript pg --save
```

Now you can create a new typeorm application and synchronize with database:

```bash
  ./node_modules/.bin/ts-node ./node_modules/.bin/typeorm init --express --db postgres
  ./node_modules/.bin/ts-node ./node_modules/.bin/typeorm schema:sync
```

Once created the application you must install required packages and start

```bash
  npm i
  npm start
```
