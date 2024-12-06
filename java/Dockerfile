FROM maven:3.9-eclipse-temurin-8 AS builder

# On utilise une image multi step car java 8 n'est pas installé sur le système hôte

LABEL maintainer="mathildegagneur"

WORKDIR /backend

COPY . .

RUN mvn clean package -DskipTests



FROM arm64v8/openjdk:8-jdk-alpine

WORKDIR /backend

COPY --from=builder /backend/target/java-*.jar app.jar

EXPOSE 8448

CMD ["java", "-jar", "app.jar"]