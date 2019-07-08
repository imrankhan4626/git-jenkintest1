pipeline{
    agent any
    stages{
        stage(test) {
            steps{
                echo "BASH"
                sh "sudo docker build -t test ."
            }
        }
    }
}
