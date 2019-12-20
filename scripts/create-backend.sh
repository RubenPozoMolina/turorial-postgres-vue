#!/bin/bash
rm -rf backend-project
mkdir backend-project
cd backend-project
npm init -y
npm i typeorm ts-node typescript pg --save
./node_modules/.bin/ts-node ./node_modules/.bin/typeorm init --express --db postgres
./node_modules/.bin/ts-node ./node_modules/.bin/typeorm schema:sync
npm i
npm start   
