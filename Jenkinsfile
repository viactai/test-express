pipeline {
   agent { 
       docker {
           image 'node:latest'
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
