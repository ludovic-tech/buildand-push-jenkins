node {

   def registryProjet='formation/'
   def IMAGE="${registryProjet}app:${Version}"

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
          docker.withRegistry('https://registry.ludovic.tech', 'harbor_id') {
              img.push 'latest'
              img.push()
          }
    }

}

