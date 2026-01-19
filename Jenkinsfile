pipeline {
    agent any

    stages {
        stage('Hazirlik') {
            steps {
                echo 'Kodlar GitHubdan alindi, Docker islemi basliyor...'
            }
        }
        
        stage('Docker Build') {
            steps {
                // Mevcut imaj? temizle ve yenisini yap
                sh 'docker build -t my-web-app .'
            }
        }

        stage('Docker Run') {
            steps {
                // E?er eski bir konteyner varsa durdur ve sil (hata vermemesi için)
                sh 'docker rm -f web-server || true'
                // Yeni konteyneri 80 portundan aya?a kald?r
                sh 'docker run -d --name web-server -p 80:80 my-web-app'
                echo 'Uygulama AWS uzerinde 80 portunda yayinda!'
            }
        }
    }
}