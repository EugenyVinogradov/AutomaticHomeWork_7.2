FROM openjdk:8-slim
ARG JAR_FILE=*.jar
WORKDIR /opt/app
COPY ${JAR_FILE} db-api-for-docker.jar
ENTRYPOINT ["java","-jar","/db-api-for-docker.jar"]
EXPOSE 9999
