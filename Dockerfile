FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} application.jar
COPY ./target/SpringBoot-Docker-Example.jar application.jar
ENTRYPOINT ["java","-jar","/application.jar"]

RUN apk add --no-cache maven  --->  maven install 
EXPOSE 8080  ---> Port belirleme

## docker build -t image_name:0.0.1 .   ---> image oluşturur.
## docker run -d --name container_name -p 9090:8080(port) (image_name):0.0.1

#Böylede yapılabilir
# Build stage
#FROM maven:3.6.3-openjdk-17 AS build
#COPY . /app
#WORKDIR /app
#RUN mvn package

# Package stage
#FROM openjdk:17
#ARG JAR_FILE=./target/SpringBoot-Docker-Example.jar
#COPY ./target/SpringBoot-Docker-Example.jar application.jar
#EXPOSE 8080
#ENTRYPOINT ["java", "-jar" , "mqtt-poc-0.0.1-SNAPSHOT.jar"]

