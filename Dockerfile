FROM openjdk:17-jdk-alpine3.13
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=teste_docker3-1.0.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]