pipeline {
    agent any
    parameters {
        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')

        text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')

        booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')

        choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')

        password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
    }
    stages {
        stage('Example') {
            steps {
                echo "Hello ${params.PERSON}"

                echo "Biography: ${params.BIOGRAPHY}"

                echo "Toggle: ${params.TOGGLE}"

                echo "Choice: ${params.CHOICE}"

                echo "Password: ${params.PASSWORD}"
            }
        }
    }
}


































// pipeline {
//     agent any
    
//     parameters {
//         string(name: 'sshUserName', description: 'SSH Username')
//         string(name: 'sshPassword', description: 'SSH Password')
//         string(name: 'orchestratormasternode', description: 'orchestrator-master-node')
//         string(name: 'workloadclustercontrolplane', description: ' workload-cluster- master node')
//         string(name: 'workloadclustercomputenode', description: 'workload cluster - worker node')
//     }
    
//     stages {

//         stage('Configure SSH') {
//             steps {
//                 script {

//                     sh """
//                         pwd
//                         whoami
//                         ls -l
//                         chmod +x test.sh
//                         ./test.sh ${params.sshUserName} ${params.sshPassword} ${params.orchestratormasternode} ${params.workloadclustercontrolplane} ${params.workloadclustercomputenode}
//                     """
//                 }
//             }
//         }
//     }
// }































// pipeline {
//     agent any
    
//     parameters {
//         string(name: 'sshusername', defaultValue: '', description: 'SSH username')
//         password(name: 'sshpassword', defaultValue: '', description: 'SSH password')
//         string(name: 'orchControlPlane', defaultValue: '', description: 'Orchestration Control Plane')
//         string(name: 'workloadMaster', defaultValue: '', description: 'Workload Master')
//         string(name: 'workloadWorker', defaultValue: '', description: 'Workload Worker')
//     }
    
//     stages {
//         stage('Print Parameters') {
//             steps {
//                 script {
//                     echo "SSH Username: ${params.sshusername}"
//                     echo "SSH Password: ${params.sshpassword}"
//                     echo "Orchestration Control Plane: ${params.orchControlPlane}"
//                     echo "Workload Master: ${params.workloadMaster}"
//                     echo "Workload Worker: ${params.workloadWorker}"
                   
//                 }
//             }
//         }
//          stage('test') {
//             steps {
//                 sh """
//                     pwd
//                     ls
//                      sh './test.sh ${params.sshusername}'
//                 """
//             }
//         }
//     }
// }
