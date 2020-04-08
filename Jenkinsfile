pipeline {
  agent any
  stages {
	stage('install packages') {
		steps {
			sh 'sudo apt-get install npm'
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

