pipeline {
  agent any
    
  tools {nodejs "node"}

  environment {
    APP_ENV = 'development'
    PORT = '5001'
  }
    
  stages {
  
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