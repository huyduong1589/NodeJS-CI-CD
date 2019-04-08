FROM jelastic/nodejs:latest

COPY firebase-service/ opt/firebase-service

WORKDIR opt/firebase-service/

RUN npm install -g node-pre-gyp

RUN npm install grpc --unsafe-perm

RUN npm install 

EXPOSE 3000

ENTRYPOINT [ "npm", "start"]
