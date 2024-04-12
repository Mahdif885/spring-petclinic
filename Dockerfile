FROM jenkins/jenkins:lts
LABEL maintainer="mahdifelah00@gmail.com"

# Set working directory (optional)
WORKDIR /app

# Entry point to run Spring Boot application
CMD ["java", "-jar", "/opt/jenkins_saves/workspace/springboot-petclinic/target/spring-petclinic-3.2.0-SNAPSHOT.jar"]
