#!groovy
pipeline {
    agent none
   stages {     
    stage('Maven Install') {
      agent {         
       docker {          
         image 'maven:3.8.8'         
     }       
  }       
  steps {
       sh 'mvn clean install'
       }
     }
   }
 }
