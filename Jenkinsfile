pipeline {
  agent any
  tools {nodejs "latest"}
  stages {
	stage('install packages') {
		steps {	
			sh 'npm install'
		}
    }
    stage('Linting') {
		steps {
			sh 'npm run lint'
		}
	}
  }
}

