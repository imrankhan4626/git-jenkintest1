pipeline{
    agent any
    stages{
        stage(test) {
            steps{
                echo "BASH"
                sh "pwd"
                SH "chmod 777 ./khan.sh && ./khan.sh"
            }
        }
    }
}
