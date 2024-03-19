# Maven aşaması
FROM maven:3.8.4-openjdk-17 AS build

WORKDIR /app

COPY ./pom.xml /app/pom.xml
RUN mvn dependency:go-offline

COPY ./src /app/src

RUN mvn package -Dmaven.test.skip=true

# OpenJDK aşaması
FROM openjdk:17-jdk

WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

EXPOSE 8081

CMD ["java", "-jar", "app.jar"]
