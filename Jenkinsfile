node {
    def app

    stage('Clone repository') {

        checkout scm
    }

    stage('Build image') {

        app = docker.build("060696/webapp")
    }

    // stage('Test image') {

    //     app.inside {

    //         sh 'echo "Tests passed"'

    //     }
    // }

    stage('Push image') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
        docker.withRegistry('https://registry.hub.docker.com', 'docker-credential') {
            app.push("webapp-${env.BUILD_NUMBER}")
            //app.push("latest")
        }
    }
}
