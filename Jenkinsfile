node{
stage('build'){
  git 'https://github.com/Prashanth0797/Jenkins_sample'
  }
 stage('Upload') {

        

            pwd(); //Log current directory

            

                 def identity=awsIdentity();//Log AWS credentials

                // Upload files from working directory 'dist' in your project workspace
                s3Upload(bucket:"jenkins-prashanth", includePathPattern:'**/*');
          

       
    }       
}
