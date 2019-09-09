FROM maven:3.3.9-jdk-8-alpine as build-env
ENV DATABASE_NAME="postgres"
ENV JDBC_SCHEMA="recipease"
ENV JDBC_URL="35.202.206.103"
ENV JDBC_USERNAME="postgres"
ENV JDBC_PASSWORD="postgres"
COPY . .
RUN mvn install
CMD java -jar target/Recipease-0.0.1-SNAPSHOT.jar 
