FROM openjdk:11-jdk-slim

# Create a directory for the application
RUN mkdir /app

# Set the working directory
WORKDIR /app

# Copy the JAR file
COPY target/*.jar /app

# Expose the port
EXPOSE 8080

# Set the entrypoint
ENTRYPOINT ["java", "-jar", "/app/spring-boot-data-jpa-0.0.1-SNAPSHOT.jar"]

FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD andrea
ENV MYSQL_DATABASE testdb
ENV MYSQL_USER andrea
ENV MYSQL_PASSWORD andrea

EXPOSE 3306 33060
CMD ["mysqld"]
