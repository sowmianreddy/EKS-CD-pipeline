pipeline {
  environment {
    registry = "sowmianreddy/node-express-helloworld"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any
  stages 
  {
  	stage('Building image') 
	{	
      		steps{
       			 script {
        	   			dockerImage = docker.build registry + ":$BUILD_NUMBER"
        			}
      		      }
    	}
	stage('Push Image to Registry')
	{
		steps
		{
		 	script
			{
         			 docker.withRegistry( '', registryCredential ) 
				 {
            				dockerImage.push()
          			}		
        		}		
		}

	}
	stage('Deploy image to cluster')
	{

		steps
		{
			sh '''
			/usr/local/bin/kubectl version
			/usr/local/bin/kubectl apply -f deployment.yml
			/usr/local/bin/kubectl apply -f service.yml
			'''

		}


	}


  }	
}
