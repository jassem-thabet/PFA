# Use OpenJDK 17 base image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file from your local target folder to the container
COPY target/kaddem-0.0.1-SNAPSHOT.jar kaddem-0.0.1-SNAPSHOT.jar

# Expose the application's port
EXPOSE 8089

# Run the JAR file
ENTRYPOINT ["java", "-jar", "kaddem-0.0.1-SNAPSHOT.jar"]
