FROM openjdk:11
ENTRYPOINT ["java","-jar","/user-service.jar"]
EXPOSE 9002got a