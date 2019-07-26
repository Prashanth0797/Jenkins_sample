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
    stage('terra init'){
      steps{
        sh 'ls'
        sh 'pwd'
        sh 'sudo terraform init /var/lib/jenkins/workspace/Multi_pipe_master/Jenkins_sample/'
      }
    }
    stage('terra validate'){
      steps{
        
        sh 'pwd'
        sh 'ls'
        sh 'sudo terraform validate /var/lib/jenkins/workspace/Multi_pipe_master/Jenkins_sample/'
      }
    }
  stage('terra plan'){
      steps{
        sh 'ls'
        sh 'sudo terraform plan /var/lib/jenkins/workspace/Multi_pipe_master/Jenkins_sample/'
      }
    }
    stage('terra apply'){
      steps{
        
        sh 'ls'
        sh 'sudo terraform apply -input=false -auto-approve /var/lib/jenkins/workspace/Multi_pipe_master/Jenkins_sample/'
      }
    }
 }
  
}
