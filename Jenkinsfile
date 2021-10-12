
node {

   def registryProjet='localhost'
   def IMAGE="${registryProjet}version-${env.BUILD_ID}"

    stage('Clone') {
          checkout scm
    }

    def img = stage('Build') {
          docker.build("$IMAGE",  '.')
    }

    stage('Run') {
          img.withRun("--name run-$BUILD_ID -p 22301:80") { c ->
                }
    }

    stage('Push') {
          docker.withRegistry('localhost', 'registry_id') {
              img.push()
          }
    }
   
}

