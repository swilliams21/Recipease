FROM maven:3.3.9-jdk-8-alpine as build-env
COPY . .
RUN mvn install
CMD java -jar Recipease-0.0.1-SNAPSHOT.jar 
