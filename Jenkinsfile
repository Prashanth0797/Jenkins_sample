def bucket = 'jenkins-prashanth'
def region = 'us-east-1'

node{
stage('build'){
  git 'https://github.com/Prashanth0797/Jenkins_sample'
  }
  
   stage('Push'){
        sh "aws s3 cp ${commitID()}.zip s3://${bucket}"
    }
}
 

def commitID() {
    sh 'git rev-parse HEAD > .git/commitID'
    def commitID = readFile('.git/commitID').trim()
    sh 'rm .git/commitID'
    commitID      
}
