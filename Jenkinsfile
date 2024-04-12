pipeline {
  agent none
  stages {
    // Maven Install (assuming JAR is already in mounted volume)
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

    // Docker Build
    stage('Docker Build') {
      agent any
      steps {
        sh """
          docker build -t shanem/spring-petclinic:latest .
        """
      }
    }
  }
}
