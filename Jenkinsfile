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
			 script{
                  		 def image_id = registry + ":$BUILD_NUMBER"
                   		 sh "ansible-playbook  playbook.yml --extra-vars \"image_id=${image_id}\""
               			}			
		}


	}


  }	
}
