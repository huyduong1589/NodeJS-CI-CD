FROM huyduong1589/nodejs-express:golden

COPY firebase-service/ opt/firebase-service

WORKDIR opt/firebase-service/

RUN npm install

EXPOSE 3000

ENTRYPOINT [ "npm", "start"]