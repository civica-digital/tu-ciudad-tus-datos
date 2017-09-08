pipeline {
  agent any
  environment {
    DEPLOY_ENV = "staging"
    REPOSITORY = "472554934874.dkr.ecr.us-east-1.amazonaws.com/tu-ciudad-tus-datos"
    TAG = "v_${env.BUILD_NUMBER}"
    HOST = "deploy@tu-ciudad-tus-datos.civicadesarrolla.me"
    COMPOSE_PROJECT_NAME = "tu-ciudad-tus-datos"
  }
  stages {
    stage('Bundle') {
      steps {
        sh 'make bundle'
      }
    }
    stage('Prepare') {
      steps {
        sh 'make prepare'
      }
    }
    // stage('Test') {
    //   steps {
    //     sh 'make test'
    //   }
    // }
    // stage('Analyze') {
    //   steps {
    //     sh 'make analyze'
    //   }
    // }
    stage('Deploy') {
      when {
        branch 'master'
      }
      steps {
        sh 'make deploy'
      }
    }
  }
  post {
    always {
      sh 'make clean'
    }
  }
}
