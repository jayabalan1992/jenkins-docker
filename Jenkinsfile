pipeline {
  agent {
    docker { 
      image 'jayabalan/puppet-lint'
      reuseNode true
    }
  }
  stages {
    stage('Run tests') {
      parallel {
        stage('Lint test') {
          steps {
            sh 'find . -name "*.pp" | xargs puppet-lint'
          }
        }  
        stage('Parser validate') {
          steps {
            sh 'find . -name "*.pp" | xargs puppet parser validate'
          }
        }
      }
    }
  }
}

