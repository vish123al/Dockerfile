def gitCommit() {
    sh "git rev-parse HEAD > GIT_COMMIT"
    def gitCommit = readFile('GIT_COMMIT').trim()
    sh "rm -f GIT_COMMIT"
    return gitCommit
}

node {
    // Checkout source code from Git
    stage 'https://github.com/vish123al/Dockerfile.git'
    checkout scm
     sh "docker build -t vishaldenge/jenkinsfile1:${gitCommit()} ."

    
    }

