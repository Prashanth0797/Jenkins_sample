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
        
        sh 'sudo cd /var/lib/jenkins/workspace/terraform_pipeline/Jenkins_sample'
        sh 'sudo terraform init'
      }
    }
    stage('terra validate'){
      steps{
        
        sh 'sudo cd /var/lib/jenkins/workspace/terraform_pipeline/Jenkins_sample'
        sh 'sudo terraform validate'
      }
    }
  stage('terra plan'){
      steps{
        
        sh 'sudo cd /var/lib/jenkins/workspace/terraform_pipeline/Jenkins_sample'
        sh 'sudo terraform plan'
      }
    }
    stage('terra apply'){
      steps{
        
        sh 'sudo cd /var/lib/jenkins/workspace/terraform_pipeline/Jenkins_sample'
        sh 'sudo terraform apply'
      }
    }
 }
  
}
