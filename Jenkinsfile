node {
   
   def PROJECT="murilopl19"
   def IMAGE="$PROJECT/build_push"
   
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
