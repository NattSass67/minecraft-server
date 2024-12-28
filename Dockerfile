# Use an official Java 21 runtime as the base image
FROM eclipse-temurin:21-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the Minecraft server jar file to the container
COPY . /app

# Expose the Minecraft server port
EXPOSE 25565

# Command to run the Minecraft server with the specified memory limits
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]