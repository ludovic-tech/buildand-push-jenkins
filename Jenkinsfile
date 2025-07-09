node {
   
   def PROJECT="quenec"
   def IMAGE="$PROJECT/app:8.6"
   
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
       docker.withRegistry('https://registry.hub.docker.com/' , 'dockerhub_id') {
              img.push()
          }
    }
   stage('compuse_up') {
      sh 'docker compose up --detach '
       sh 'docker-compose up -d'
    }

}
