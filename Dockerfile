FROM maven:3.6.1-jdk-8

ADD . /app
WORKDIR /app

RUN mvn -Pprod clean package
CMD mvn spring-boot:run
