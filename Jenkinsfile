pipeline {
  agent any
    
  tools {nodejs "Node 14"}

  environment {
    APP_ENV = 'development'
    PORT = '5001'
  }
    
  stages {
  
    stage('Clean Previous') {
      steps {
        sh 'npm cache clean --force'
      }
    }
    stage('Install dependencies') {
      steps {
        sh 'npm install'
      }
    }

    stage('Install build') {
      steps {
        sh 'npm run build'
      }
    }
     
    stage('Deploy & Run') {
      steps {
         sh 'npm start'
      }
    }      
  }
}