pipeline
{

	agent any

	stages
	{

		stage('Build Docker Image')
		{


		//stage('Build Docker Image') {
   		//steps {
    		//withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD']])
		//{
     		//sh '''
      		//	docker build -t andresaaap/cloudcapstone:$BUILD_ID .
     		//'''
    		//}
   		//}
  	        //}

			sh 'docker build -t sowmianreddy/node-express-helloworld:$BUILD_ID'
		}
		stage('Push Docker Image')
		{
			sh 'docker push sowmianreddy/node-express-helloworld'
		}

		//stage('Set Cluster context')
		//{

		//}

		//stage('Deploy to cluster')
		//{

		//}


	}

  



}


