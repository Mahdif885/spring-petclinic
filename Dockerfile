FROM jenkins/jenkins:lts
LABEL maintainer="mahdifelah00@gmail.com"

# Set working directory (optional)
WORKDIR /app

COPY . /app

# Entry point to run Spring Boot application
CMD ["java", "-jar", "/app/spring-petclinic.jar"]
