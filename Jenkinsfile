pipeline{
    agent any
    stages{
        stage(test) {
            steps{
                echo "BASH"
                sh "pwd"
                sh "chmod 777 ./khan.sh && ./khan.sh"
            }
        }
    }
}
