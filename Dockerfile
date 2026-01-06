FROM maven:3.9-eclipse-temurin-17-alpine AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

FROM amazoncorretto:17-alpine-jdk
WORKDIR /app
EXPOSE 8080
COPY --from=build /app/target/aws-deploy-0.0.1-SNAPSHOT.jar aws-docker.jar
ENTRYPOINT ["java", "-jar", "aws-docker.jar"]