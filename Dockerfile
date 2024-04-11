FROM jenkins/jenkins:lts
LABEL maintainer="mahdifelah00@gmail.com"

# Copy the JAR file into the image
COPY /opt/jenkins_saves/workspace/springboot-petclinic/target/spring-petclinic-3.2.0-SNAPSHOT.jar /home/spring-petclinic-3.2.0-SNAPSHOT.jar

# Set the entry point to run the Spring Boot application
CMD ["java", "-jar", "/home/spring-petclinic-3.2.0-SNAPSHOT.jar"]
