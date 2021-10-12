
node {

   def registryProjet='localhost:5000/'
   def IMAGE="${registryProjet}version-${env.BUILD_ID}"

    stage('Clone') {
          checkout scm
    }

    stage('Build') {
          docker.build("$IMAGE",  '.')
    }

    stage('Run') {
          img.withRun("--name run-$BUILD_ID -p 22301:80") { c ->
                }
    }

    stage('Push') {
          docker.withRegistry('$registryProjet', 'registry_id') {
              img.push()
          }
    }
   
}

