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
                    // Define the source and destination paths
                    def sourcePath = '/opt/jenkins_saves/workspace/springboot-petclinic/target/spring-petclinic-3.2.0-SNAPSHOT.jar'
                    def destinationPath = '/home/spring-petclinic-3.2.0-SNAPSHOT.jar'

                    // Copy the JAR file into the Docker container
                    sh "docker cp ${sourcePath} $(docker ps -q -f name=maven):${destinationPath}"

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
