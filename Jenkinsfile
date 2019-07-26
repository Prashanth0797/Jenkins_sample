node{
stage('build'){
  git 'https://github.com/Prashanth0797/Jenkins_sample'
  }
  stage('Deployment') {
              s3Upload(bucket: 'jenkins-prashanth', includePathPattern:'**/*');
  }       
        
        
}
