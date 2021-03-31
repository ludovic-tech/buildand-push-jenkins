
node {

   def registryProjet='registry.gitlab.com/ludovic-tech/kubernets'
   def IMAGE="${registryProjet}:version-${env.BUILD_ID}"

    stage('Clone') {
          checkout scm
    }

    def img = stage('Build') {
          docker.build("$IMAGE",  '.')
    }

    stage('Run') {
          img.withRun("--name run-$BUILD_ID -p 82001:80") { c ->
                }
    }

    stage('Push') {
          docker.withRegistry('https://registry.gitlab.com', 'registry_id') {
              img.push 'latest'
              img.push()
          }
    }
    stage('Deploy - Clone') {
          git 'https://github.com/priximmo/jenkins-ansible-docker.git'
    }
    stage('Deploy - End') {
      ansiblePlaybook (
          colorized: true,
          become: true,
          playbook: 'playbook.yml',
          inventory: 'hosts.yml',
          extras: "--extra-vars 'image=$IMAGE'"
      )
    }

}

