FROM jenkins/jenkins:lts
LABEL maintainer="mahdifelah00@gmail.com"

# Copy the JAR file into the image
COPY spring-petclinic-1.5.1.jar /home/spring-petclinic-1.5.1.jar

# Set the entry point to run the Spring Boot application
CMD ["java", "-jar", "/home/spring-petclinic-1.5.1.jar"]

