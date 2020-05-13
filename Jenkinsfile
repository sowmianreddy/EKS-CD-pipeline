pipeline
{

	agent any

	stages
	{

		stage('Build Docker Image')
		{


			steps
			{
				withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'HUB_PASS', usernameVariable: 'HUB_USER')])
				{

					sh '''
					sudo docker build -t sowmianreddy/node-express-helloworld:$BUILD_ID .
					'''
				}
			}
		}


	//	stage('Push Docker Image')
	//	{
	//		sh 'docker push sowmianreddy/node-express-helloworld'
	//	}

		//stage('Set Cluster context')
		//{

		//}

		//stage('Deploy to cluster')
		//{

		//}


	}

  



}


