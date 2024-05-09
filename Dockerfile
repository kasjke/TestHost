FROM maven:3.8.3-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17
COPY --from=build /target/book-shop-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8081COPY /src/main/resources/application.properties /usr/app/


ENTRYPOINT ["java","-jar","app.jar", "--spring.config.location=file:/usr/app/application.properties"]