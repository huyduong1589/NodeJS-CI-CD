FROM jelastic/nodejs:latest

COPY firebase-service/ opt/

WORKDIR opt/firebase-service/

RUN npm install

EXPOSE 3000

ENTRYPOINT [ "npm", "start"]