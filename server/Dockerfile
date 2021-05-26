FROM maven:3-openjdk-11-slim as BUILD
WORKDIR /app
COPY demo/ /app/
RUN mvn clean package

FROM openjdk:11-slim
RUN apt update && apt upgrade --assume-yes
RUN apt install --assume-yes ssh
RUN mkdir ~/.ssh
RUN touch ~/.ssh/authorized_keys
ENV SSH_PUBLIC_KEY ""
EXPOSE 22
WORKDIR /app
COPY --from=BUILD /app/target/*.jar /app/server.jar
EXPOSE 8080
CMD ["/bin/sh", "-c", "echo ${SSH_PUBLIC_KEY} > ~/.ssh/authorized_keys && service ssh start && java -jar server.jar"]