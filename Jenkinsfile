pipeline {
  agent {
    docker { 
      image 'jayabalan/puppet-lint'
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
