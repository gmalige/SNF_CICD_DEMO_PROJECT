pipeline {
        agent { 
stage(none)
    }
    stages {
        stage('Run schemachange') {
            steps {
                sh "pip install schemachange --upgrade"
                sh "schemachange -f CONFIG -a ${SF_ACCOUNT} -u ${SF_USERNAME} -r ${SF_ROLE} -w ${SF_WAREHOUSE} -d ${SF_DATABASE} -c ${SF_DATABASE}.CICD_LOGS.TBL_CICD_LOGS --create-ccicd-logs-table"
            }
        }
    }
}
