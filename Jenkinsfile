pipeline {
  agent any
  stages {
	stage('printing hello') {
		steps {
			echo "Hello"
		}
	}
	stage('install packages') {
		steps {	
			echo "Performing npm build..."
			sh 'npm install'
        	
		}
    }
    stage('Linting') {
		steps {
			echo "Performing lint"
			sh 'npm run lint'
		}
	}
  }
}

