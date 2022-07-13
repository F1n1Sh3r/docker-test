FROM openjdk:11
ARG JAR_FILE=target/*.jar
ENTRYPOINT ["java","-jar","/user-service.jar"]
EXPOSE 9002