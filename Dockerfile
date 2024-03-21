FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} application.jar
COPY ./target/SpringBoot-Docker-Example.jar application.jar
ENTRYPOINT ["java","-jar","/application.jar"]

