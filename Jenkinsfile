pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
      label 'gorbyo/docker-sems:${env.BUILD_NUMBER}'
    }
  }

  stages {
    stage('Build Container') {
      steps {
        echo 'Hello World'
        // def app = docker.build "gorbyo/docker-sems:${env.BUILD_NUMBER}"
      }
    }
  }
    // stage 'Publish'
    //     docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
    //         app.push("jenkins")
    //     }

}
