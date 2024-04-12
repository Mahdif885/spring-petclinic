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
        stage('Copy JAR file') {
            agent any
            steps {
                script {
                    // Define the source and destination paths
                    def sourcePath = '/opt/jenkins_saves/workspace/springboot-petclinic/target/spring-petclinic-3.2.0-SNAPSHOT.jar'
                    def destinationPath = '/home/spring-petclinic-3.2.0-SNAPSHOT.jar'

                    // Set the Jenkins container ID
                    def jenkinsContainerId = 'f062e31c4b47'

                    // Print the Jenkins container ID for debugging
                    println "Jenkins container ID: ${jenkinsContainerId}"

                    // Copy the JAR file to the Jenkins container
                    sh "docker cp ${sourcePath} ${jenkinsContainerId}:${destinationPath}"
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

