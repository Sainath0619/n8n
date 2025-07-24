pipeline {
  agent any

  environment {
    REGISTRY = "localhost:5000"
    APP_NAME = "n8n"
  }

  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/Sainath0619/n8n.git'
      }
    }

    stage('Build Image') {
      steps {
        dir("n8n") {
          sh """
            docker build -t ${REGISTRY}/${APP_NAME}:latest .
          """
        }
      }
    }

    stage('Push Image') {
      steps {
        sh "docker push ${REGISTRY}/${APP_NAME}:latest"
      }
    }
  }
}
