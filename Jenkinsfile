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
                script {
                    // Copy the JAR file into the Docker container
                    sh 'docker cp /opt/jenkins_saves/workspace/springboot-petclinic/target/spring-petclinic-3.2.0-SNAPSHOT.jar $(docker ps -q -f name=maven)'
                    // Run Maven build
                    sh 'mvn clean install'
                }
            }
        }
        stage('Docker Build') {
            agent any
            steps {
                sh 'docker build -t shanem/spring-petclinic:latest .'
            }
        }
    }
}
