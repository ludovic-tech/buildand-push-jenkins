node {

   def registryProjet='buildjenkins/'
   def IMAGE="${registryProjet}app:${tag}"

    stage('Clone') {
          checkout scm
    }

    def img = stage('Build') {
          docker.build("$IMAGE",  '.')
          }

    stage('Run') {
          img.withRun("--name run-$BUILD_ID") { c ->
       
          }
    }

    stage('Push') {
       docker.withRegistry('https://registry.ludovic.io/' , 'harbor_id') {
              img.push 'latest'
              img.push()
          }
    }
   stage('compuse_up') {
       sh 'docker compose up --detach'
    }

}

