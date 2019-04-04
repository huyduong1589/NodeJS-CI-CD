FROM jelastic/nodejs:latest

COPY myapp/ opt/

WORKDIR opt/myapp/

RUN npm install

EXPOSE 3000

ENTRYPOINT [ "npm", "start"]