FROM jelastic/nodejs:latest

COPY firebase-service/ opt/firebase-service

WORKDIR opt/firebase-service/

RUN npm install -g node-pre-gyp

EXPOSE 3000

