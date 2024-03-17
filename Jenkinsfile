node {
    def app

    stage ('Clone') {
        checkout scm
    }

    stage ('Build image') {
        app = docker.build("erabot/nginx")
    }

    stage ('Run image') {
        docker.image('erabot/nginx').withRun('-p 49152:80') { c ->
        sh 'docker ps'
        sh 'curl http://localhost:49152/'
        }
    }

    stage ('Push') {
        docker.withRegistry('http://localhost:5000') {
            app.push 'latest'
        }
    }
}