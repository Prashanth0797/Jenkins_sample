pipeline{
  agent{
    node{
    label 'master'
    }
  }
  
  
  stages{
    
    stage('terraform started'){
      steps{
      sh 'sudo su'  
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
        
        sh 'terraform init /var/lib/jenkins/workspace/terraform_pipeline/Jenkins_sample'
      }
    }

 }
  
}
