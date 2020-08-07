pipeline {
   agent { 
       docker {
           image 'node:latest'
           args '-p 3000:3000 npm start' 
       }
   }
   stages {
      stage('Install Dependencies') {
         steps {
            sh 'npm -v' // sanity check
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
