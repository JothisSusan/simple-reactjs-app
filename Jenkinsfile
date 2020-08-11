pipeline {
  environment
  {
    registry = "jothissusan/simple-react-app"
    registryCredential = "docker_hub_jothissusan"
    dockerImage=""
  }
  agent any
  stages{
  	stage ('Checkout') {
		steps{
			echo "SCM Checkout"
			checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/JothisSusan/simple-reactjs-app.git']]])
	    	}
	}
	stage('install dependendience') {
      		steps {
		  echo 'installing dependencies'
		  sh 'npm install'
            	}
    	}
        stage('build the project') {
                steps {
       		 echo 'building the project'
       		 sh 'npm run build'
		}
   	}
	stage ('Build Docker Image'){
	      steps
	      {
		echo "Building Docker Image"
	       script
	       {
			dockerImage= docker.build registry = ":$BUILD_NUMBER"
	       }
	      }
	}
	stage ('Push Docker Image'){
	      steps{
		echo "Pushing Docker Image"
	        script {
          		docker.withRegistry( '', registryCredential ) {
              		dockerImage.push()
              		dockerImage.push('latest')
		}
		}
	      }
	    }
	 stage ('Deploy to Dev') {
	      steps{
		echo "Deploying to Dev Environment"
		sh "docker rm -f petclinic || true"
		sh "docker run -d --name=simple-react-app -p 8081:8080 jothissusan/simple-react-app"
	      }
	    }
	  }
	}
