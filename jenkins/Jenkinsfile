/*
 * Jenkinsfile
 * project: petril
 * 2018/11/03 Greg Shaw
 */

pipeline {
    agent any
    triggers {
    	cron('H/30 * * * *')
    }
    options {
    	timestamps()
    }
    stages {
    	/*
    	 * build
    	 */
        stage('build') {
            steps {
                sh '''
                    make clean
                    make
                '''
            }
        }
        
        /*
    	 * unit-test
    	 */
        stage('unit-test') {
            steps {
                sh '''
                    ./petril
                '''
            }
        }
        
		/*
    	 * deliver
    	 */
        stage('deliver') {
            steps {
                sh '''
                    cp ./petril /tmp
                '''
            }
        }
    }
}
