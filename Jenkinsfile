pipeline {
  agent none
  stages {
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
      agent any
      steps {
        sh """
          docker cp vagrant@BusinessTraining:/opt/jenkins_saves/workspace/springboot-petclinic/target/spring-petclinic-3.2.0-SNAPSHOT.jar .
          docker build -t shanem/spring-petclinic:latest .
        """
      }
    }
  }
}
