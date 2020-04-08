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
			sh 'npm install --global dockerlinter'
        	
		}
    }
    stage('Linting') {
		steps {
			echo "Performing lint"
			sh 'dockerlinter -f ./Dockerfile'
		}
	}
  }
}

