FROM eclipse-temurin:17-jdk-jammy

COPY ./pom.xml ./
WORKDIR /hello-world
COPY ./02-hello-world/.mvn/ .mvn
COPY ./02-hello-world/mvnw ./
COPY ./02-hello-world/pom.xml ./
COPY ./02-hello-world/src ./src
RUN ./mvnw dependency:resolve

CMD ["./mvnw", "spring-boot:run"]