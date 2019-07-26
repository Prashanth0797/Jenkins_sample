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
        
        sh 'cd /var/lib/jenkins/workspace/terraform_pipeline/Jenkins_sample'
        sh 'terraform init'
      }
    }
    stage('terra validate'){
      steps{
        
        sh 'cd /var/lib/jenkins/workspace/terraform_pipeline/Jenkins_sample'
        sh 'terraform validate'
      }
    }
  stage('terra plan'){
      steps{
        
        sh 'cd /var/lib/jenkins/workspace/terraform_pipeline/Jenkins_sample'
        sh 'terraform plan'
      }
    }
    stage('terra apply'){
      steps{
        
        sh 'cd /var/lib/jenkins/workspace/terraform_pipeline/Jenkins_sample'
        sh 'terraform apply'
      }
    }
 }
  
}
