pipeline {
  agent any
  options {
       ansiColor colorMapName: 'XTerm'
  }
  stages {
    stage('Build Container') {
      agent {
        dockerfile {
          filename 'Dockerfile'
          additionalBuildArgs  '--tag gorbyo/docker-sems:$BUILD_NUMBER'
        }
      }
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
