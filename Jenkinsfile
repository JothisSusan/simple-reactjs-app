pipeline {
  environment
  {
    registry = "jothissusan/simple-react-app"
    registryCredential = "docker_hub_jothissusan"
    dockerImage=""
  }
  agent any
  stages{
    stage ('Checkout') 
	  {
	    steps
      {
        echo "SCM Checkout"
		    checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/JothisSusan/simple-reactjs-app.git']]])
	    }
	  }
    stage ('Build Docker Image') 
    {
      steps
      {
        echo "Building Docker Image"
      }
    }
    stage ('Push Docker Image') 
    {
      steps
      {
        echo "Pushing Docker Image"
      }
    }
    stage ('Deploy to Dev') 
    {
      steps
      {
        echo "Deploying to Dev Environment"
      }
    }
  }
}
