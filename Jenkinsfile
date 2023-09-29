pipeline {
  agent any
  stages {
    stage('Clean up'){
      steps {
        sh "docker stop nodejs-project || true"
        sh "docker rm nodejs-project || true"
      }
    }
    stage('build stage'){
      steps {
        sh "docker build -t nodejs-project:${BUILD_NUMBER} ."
      }
    }
    stage('run stage'){
      steps {
        sh "docker run -d -p 80:5000 --name nodejs-project nodejs-project:${BUILD_NUMBER}" 
      }
    }
  }
}