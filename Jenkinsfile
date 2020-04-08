pipeline {
  agent any
  tools {nodejs "latest"}
  stages {
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

