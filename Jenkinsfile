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
	/*
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
	*/
	stage('Deploy image to cluster')
	{

		steps
		{
		 	withAWS(credentials:'aws-eks-cluster')
			{
				sh '''
				aws configure --profile $HOME/.aws/profile
                                 /usr/local/bin/kubectl config use-context arn:aws:eks:us-west-2:325940544892:cluster/scrumptious-mongoose-1589553338
				/usr/local/bin/kubectl version
				'''
				 //  /usr/local/bin/kubectl apply -f deployment.yml
			
				//  /usr/local/bin/kubectl apply -f service.yml
			}	
			

		}


	}


  }	
}
