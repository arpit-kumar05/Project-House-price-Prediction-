pipeline{
    agent any 

    stages{
        stage("Build"){
            steps{
                sh 'docker build -t my-app .'
            }

        }

        stage("Remove old containers"){
            steps{
                sh 'docker rm -f house-price-container || true'
            }
        }
        stage("Run container"){
            steps{
                sh 'docker run -d -p 5000:5000 --name house-price-container my-app'
            }
        }
    }
}