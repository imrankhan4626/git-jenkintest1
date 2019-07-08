pipeline{
    agent any
    stages{
        stage(test) {
            steps{
                echo "BASH"
                sh "docker build -t test ."
            }
        }
    }
}
