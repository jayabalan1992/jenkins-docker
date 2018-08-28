pipeline {
  agent {
    docker { 
      image 'docker pull jayabalan/puppet-lint'
      reuseNode true
    }
  }
  stages {
    stage('Linting Puppet files') {
      steps {
        sh 'puppet-lint ./*.pp'
      }
    }
  }
}
