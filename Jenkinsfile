pipeline {
    agent {
        node {
            label 'azure-tools-node01'
        }
      }
    parameters {
        choice(
            name: 'select_env',
            choices: 'prod\nsit2\npt\nvnp',
            description: 'select the environment names'
        )
        choice(
            name: 'ws_option',
            choices: 'select\nnew',
            description: 'workspace option for terraform to run'
        )
        choice(
            name: 'ws_name',
            choices: 'ihs-api',
            description: 'workspace name for terraform to run'
        )
        choice(
            name: 'tfvarsfiles',
            choices: 'sit2.tfvars\nvnp.tfvars',
            description: 'select terraform parameters file to run'
        )

        choice(
            name: 'deploy',
            choices: 'plan\napply',
            description: 'plan or apply terraform configuration to run'
        )
        choice(
            name: 'approvals',
            choices: '\n-auto-approve',
            description: 'approve terraform'
        )
      }
    environment {
        ENV         = "${params.select_env}"
        WS          = "${params.ws_option}"
        WSNAME      = "${params.ws_name}"
        DEPLOYMENT  = "${params.deploy}"
        TFVARSFILE  = "${params.tfvarsfiles}"
        APPROVE     = "${params.approvals}"
        ARM_SUBSCRIPTION_ID  = credentials("ARM_subscription_id")
        ARM_CLIENT_ID       = credentials("ARM_client_id")
        ARM_CLIENT_SECRET   = credentials("ARM_clientsecret_id")
        ARM_TENANT_ID       = credentials("ARM_tenant_id")
        STORAGE_ACCOUNT_KEY = credentials("access_key_storageacc_prodeunnonpcisada0001")
        WORKDIR_CMD         = '/var/jenkins/workspace/terraform-ihs-api-pipeline/azure_managed/dotcom-ihs-wcs-live-stack/dotcom-ihswcs-apiliv-vm'
    }
    stages {
        stage('checkout-repo') {
            steps {
              checkout scm
            }
        }
        stage('init-terraform') {
            steps {
                sh 'cd ${WORKDIR_CMD} && terraform init -backend-config="key=state-file" -backend-config="storage_account_name=prodeunnonpcisada0001" -backend-config="container_name=prod-eun-tfstat-blob-001" -backend-config="access_key=$STORAGE_ACCOUNT_KEY"'
            }
        }
        stage('workspace-terraform') {
            steps {
                sh 'cd ${WORKDIR_CMD} && terraform workspace $WS $ENV-$WSNAME'
            }
        }
        stage('deploy-terraform') {
            steps {
                sh 'cd ${WORKDIR_CMD} && terraform $DEPLOYMENT -var-file="$TFVARSFILE" $APPROVE'
            }
        }
    }
}
