pipeline {
  agent any
  stages {
	stage('install packages') {
		steps {	
			echo "Performing npm build..."
			sh 'sudo chown -R ubuntu: /usr/local/lib/node_modules'
			sh 'sudo npm install --global dockerlint'
        	
		}
    }
    stage('Linting') {
		steps {
			echo "Performing lint"
			sh 'dockerlint ./Dockerfile'
		}
	}
	stage('Building docker image') {
		steps {
			echo "Building docker"
			sh './run_docker.sh'
		}
	}
	stage('Uploading docker image') {
		steps {
			echo "Pushing docker"
			sh './upload_docker.sh'
		}
	}
  }
}

