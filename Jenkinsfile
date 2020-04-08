pipeline {
  agent any
  stages {
	stage('printing hello') {
		echo "Hello"
	}
	stage('install packages') {
		steps {	
			withNPM(npmrcConfig:'MyNpmrcConfig') {
            	echo "Performing npm build..."
            	sh 'npm install'
        	}
		}
    }
    stage('Linting') {
		steps {
			withNPM(npmrcConfig:'MyNpmrcConfig') {
				echo "Performing lint"
				sh 'npm run lint'
        	}
		}
	}
  }
}

