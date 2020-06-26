pipeline {
  agent any
  environment {
    registryCredential = 'dockerhub'
   }
  stages {
    stage('Build') {
      steps {
          //echo 'Hello Build'
          sh 'docker build -t mustafa75/frontend .'
      }
     }
    stage('Test') {
      steps {
          //echo 'Hello test'
          sh 'docker container run -p 9091:8080 --name frontend_cont -d mustafa75/frontend'
          sh 'curl -I http://localhost:9091/hello'
      }
    }
    stage('Publish') {
      steps{
          //echo 'Hello Publish'
        script {
        docker.withRegistry( '', registryCredential ) {
        sh 'docker push mustafa75/frontend:latest'
          }
        }
      }
    }
  }
}
