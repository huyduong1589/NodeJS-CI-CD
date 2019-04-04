FROM jelastic/nodejs:latest

COPY pom.xml pipeline/

COPY src/ pipeline/src/

WORKDIR pipeline/

RUN mvn clean install

EXPOSE 3000

ENTRYPOINT [ "java", "-jar", "/pipeline/target/jenkins-pipeline.jar"]