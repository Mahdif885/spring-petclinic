pipeline {
    agent none
    stages {     
        stage('Maven Install') {
            agent {         
                docker {          
                    image 'maven:3.8.8'
                    args '-v $HOME/.m2:/root/.m2'  // Mount volume for Maven repository
                }       
            }       
            steps {
                sh 'mvn clean install'
            }
        }
    }
}
