
node {

  
   def IMAGE="srv-web-formation"
   def container_name="srv-web-formation"
	
    stage('Clone') {
          checkout scm
    }

    stage('Build image') {
          app = docker.build("$IMAGE",  'srv-web')
    }

    stage('Run image') {
        docker.image('srv-web').withRun('-p 800:80 --name srv-web' ) { c ->

        sh 'docker ps | grep srv-web'
	}

    }
}
