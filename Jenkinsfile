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
      }
    }
    
    stage('git clone'){
      steps{
        
        sh 'sudo rm -r *;sudo git clone https://github.com/Prashanth0797/Jenkins_sample.git'
      }
    }

 }
  
}
