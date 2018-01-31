pipeline {
  agent any
  options {
       ansiColor colorMapName: 'XTerm'
  }
  stages {
    stage('Build Container') {
      steps {
        sh 'echo "Building $BUILD_ID..."'
      }
      agent {
        dockerfile true
        // {
        //   additionalBuildArgs  '--tag gorbyo/docker-sems:$BUILD_NUMBER'
        // }
      }
    }

    stage('Publish Container') {
      steps {
        sh 'echo "Publishing $BUILD_ID..."'
      }
      agent {
        docker {
          label 'docker'
          image 'gorbyo/docker-sems:jenkins'
          registryUrl 'https://registry.hub.docker.com'
          registryCredentialsId 'docker-hub-credentials'
        }
      }
    }
  }
}
