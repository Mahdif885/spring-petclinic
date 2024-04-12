pipeline {
  agent none
  stages {
    // New Stage for Local JAR Copy (Option 1)
    stage('Copy JAR from Local') {
      agent any  # This stage can run on any agent
      steps {
        sh """
          # Replace with the actual path to your JAR file
          cp /opt/jenkins_saves/workspace/springboot-petclinic/target/spring-petclinic-3.2.0-SNAPSHOT.jar 192.168.100.10:/var/jenkins_home/workspace/springboot-petclinic/target/

        """
      }
    }
    
    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.8.8'
          args '-u root'
        }
      }
      steps {
        sh 'mvn clean install'
      }
    }
    
    stage('Docker Build') {
      agent any  # This stage can run on any agent
      steps {
        sh """
          docker build -t shanem/spring-petclinic:latest .
        """
      }
    }
  }
}
