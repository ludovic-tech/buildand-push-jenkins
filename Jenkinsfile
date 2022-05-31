node {

   def registryProjet='localhost:5000/'
   def IMAGE="${registryProjet}jenkins:version-${env.BUILD_ID}"

    stage('Clone') {
          checkout scm
    }

    def img = stage('Build') {
          docker.build("$IMAGE",  '.')
    }

    stage('Run') {
          img.withRun("--name run-$BUILD_ID -p 8000:80") { c ->
       
          }
    }

    stage('Push') {
          docker.withRegistry('https://${registryProjet}', 'user_id') {
              img.push 'latest'
              img.push()
          }
    }

}

