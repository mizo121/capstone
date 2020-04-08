pipeline {
  agent any
  stages {
	stage('install packages') {
		steps {	
			echo "Performing npm build..."
			sh 'sudo chown -R ubuntu: /usr/local/lib/node_modules'
			sh 'sudo npm install --global dockerlinter'
        	
		}
    }
    stage('Linting') {
		steps {
			echo "Performing lint"
			sh 'dockerlinter -f ./Dockerfile -s bash #default sh'
		}
	}
  }
}

