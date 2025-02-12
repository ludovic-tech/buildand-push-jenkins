node {
   
   def PROJECT="ludo-forma"
   def IMAGE="$PROJECT/app:$VERSION"
   
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
              img.push()
          }
    }
   stage('compuse_up') {
       sh 'docker compose up --detach'
    }

}

