FROM openjdk:11-jdk-slim
ARG JAR_FILE=target/*.jar
RUN mkdir /app
WORKDIR /app
COPY ${JAR_FILE} /app
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/*.jar"]

FROM mysql:8.0
ARG JAR_FILE
ENV MYSQL_ROOT_PASSWORD andrea
ENV MYSQL_DATABASE testdb
ENV MYSQL_USER andrea
ENV MYSQL_PASSWORD andrea
EXPOSE 3306 33060
CMD ["mysqld"]
