FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} application.jar
COPY ./target/SpringBoot-Docker-Example.jar application.jar
ENTRYPOINT ["java","-jar","/application.jar"]

RUN apk add --no-cache maven  --->  maven install 
EXPOSE 8080  ---> Port belirleme

## docker build -t image_name:0.0.1 .   ---> image oluşturur.
## docker run -d --name container_name -p 9090:8080(port) (image_name):0.0.1

