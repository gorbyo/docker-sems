pipeline {
  agent any
  options {
       ansiColor colorMapName: 'XTerm'
  }
  stages {
    stage('Build Container') {
      agent {
        dockerfile {
          dockerfile true
          args  '--tag gorbyo/docker-sems:$BUILD_NUMBER'
        }
      }
    }

    // stage('Publish Container') {
    //   agent {
    //     docker {
    //       label 'docker'
    //       image 'gorbyo/docker-sems:jenkins'
    //       registryUrl 'https://registry.hub.docker.com'
    //       registryCredentialsId 'docker-hub-credentials'
    //     }
    //   }
    // }
  }
}
