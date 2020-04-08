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
			withNPM(npmrcConfig:'89286558-a89e-49a8-abbd-543ecbf102d4') {
            	echo "Performing npm build..."
            	sh '/usr/bin/npm install'
        	}
		}
    }
    stage('Linting') {
		steps {
			withNPM(npmrcConfig:'89286558-a89e-49a8-abbd-543ecbf102d4') {
				echo "Performing lint"
				sh '/usr/bin/npm run lint'
        	}
		}
	}
  }
}

