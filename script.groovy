node {
	def registryProjet='registry.gitlab.com/ludovic-tech/jenkins-formation'
        def IMAGE="${registryProjet}:version-${env.BUILD_ID}"
       
        stage('Clone'){
		checkout scm
	}

	def img = stage('Build') {
            docker.build("$IMAGE", '.')
        }
	stage('Run') {
            img.withRun("--name run-$BUILD_ID -p 8900:80"_) { c ->
             sh 'curl localhost:8900'
            }
       }
       stage('Push') {
	docker.withRegistry('https://registry.gitlab.com', 'registry') {
	     img.push 'latest'
             img.push()
	   }
	}   

}
