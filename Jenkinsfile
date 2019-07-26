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
    stage('CFT'){
      steps{
        sh 'ls'
        sh 'pwd'
        
        sh 'aws cloudformation create-stack --stack-name createec2 --template-body /var/lib/jenkins/workspace/Multi_pipe_master/Jenkins_sample/cerate_ec2_cft.json --region us-east-1'
      }
    }
    
 }
  
}
