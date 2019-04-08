FROM jelastic/nodejs:latest

COPY firebase-service/ opt/

WORKDIR opt/firebase-service/

EXPOSE 3000

ENTRYPOINT [ "npm", "start"]