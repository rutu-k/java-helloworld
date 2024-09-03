# Use an official Maven image with OpenJDK 17 as the base image
FROM maven:3.8.8-eclipse-temurin-17 AS build

# Set the working directory in the container
WORKDIR /app

# Copy the project files to the container
COPY pom.xml .
COPY src ./src

# Package the application, including running unit tests
RUN mvn clean package

# Keep the container running
CMD ["tail", "-f", "/dev/null"]

