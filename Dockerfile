FROM maven:3.3.9-jdk-8-alpine as build-env
ENV DATABASE_NAME="recipease"
#ENV JDBC_SCHEMA="idk"
#ENV JDBC_URL="idk"
ENV JDBC_USERNAME="user"
ENV JDBC_PASSWORD="password"
COPY . .
RUN mvn install
CMD java -jar Recipease-0.0.1-SNAPSHOT.jar 
