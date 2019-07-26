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
        sh 'sudo rm -rf /var/lib/jenkins/workspace/Multi_pipe_master/*'
        sh 'sudo rm -r *;sudo git clone https://github.com/Prashanth0797/Jenkins_sample.git'
      }
    }
    stage('terra init'){
      steps{
        sh 'ls'
        sh 'cp -r /var/lib/jenkins/workspace/Multi_pipe_master/Jenkins_sample/. /var/lib/jenkins/workspace/Multi_pipe_master'
        sh 'pwd'
        sh 'sudo terraform init'
      }
    }
    stage('terra validate'){
      steps{
        
        sh 'pwd'
        sh 'ls'
        sh 'sudo terraform validate'
      }
    }
  stage('terra plan'){
      steps{
        sh 'ls'
        sh 'sudo terraform plan'
      }
    }
    stage('terra apply'){
      steps{
        
        sh 'ls'
        sh 'sudo terraform apply'
      }
    }
 }
  
}
