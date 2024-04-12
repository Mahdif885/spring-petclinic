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
    }
}
