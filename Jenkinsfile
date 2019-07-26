pipeline{
  agent{
    node{
    label 'master'
    }
  }
  
  
  stages{
    
    stage('terraform started'){
      steps{  
      sh 'echo "started"'
      sh 'pwd'
      }
    }
    
    stage('git clone'){
      steps{
        sh 'sudo rm -r *;sudo git clone https://github.com/Prashanth0797/Jenkins_sample.git'
      }
    }
    stage('aws copy to s3'){
      steps{
        sh 'ls'
        sh 'pwd'
        sh 'aws s3 cp /var/lib/jenkins/workspace/Multi_pipe_master/Jenkins_sample/images.jfif s3://jenkins-prashanth/'
      }
    }
    
 }
  
}
