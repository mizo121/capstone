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
			sh 'sudo chown -R ubuntu: /usr/local/lib/node_modules'
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

