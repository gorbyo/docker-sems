node {

    // stage 'Checkout'
    //         checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[url: 'https://github.com/gorbyo/docker-sems.git']]])


    stage 'Build'
        def app = docker.build "gorbyo/docker-sems:${env.BUILD_NUMBER}"


    stage 'Publish'
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("jenkins")
        }

    // stage 'Deploy'
    //   sh '/usr/local/bin/docker-machine ssh docker-sandbox docker stop webserver'
    //   sh '/usr/local/bin/docker-machine ssh docker-sandbox docker rm webserver'
    //   sh '/usr/local/bin/docker-machine ssh docker-sandbox docker pull gorbyo/docker-sems'
    //   sh '/usr/local/bin/docker-machine ssh docker-sandbox docker run -d --net host --name semsserver gorbyo/docker-sems'

}
