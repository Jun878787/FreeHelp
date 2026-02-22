FROM maven:3.9.4-eclipse-temurin-17 AS build
WORKDIR /workspace
COPY . /workspace
# Build only the application module and its dependencies to speed up build
RUN mvn -T 1C -DskipTests package -pl lanjii-application -am

FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app
COPY --from=build /workspace/lanjii-application/target/*.jar /app/app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]
