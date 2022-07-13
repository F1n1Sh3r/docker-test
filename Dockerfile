FROM openjdk:11
ARG JAR_FILE=jenkins-data/*.jar
COPY ${JAR_FILE} user-service.jar
ENTRYPOINT ["java","-jar","/user-service.jar"]
EXPOSE 9002