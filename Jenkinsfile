pipeline {
    agent any
    
    parameters {
        string(name: 'sshUserName', description: 'SSH Username')
        string(name: 'sshPassword', description: 'SSH Password')
        string(name: 'orchestrator master node', description: 'orchestrator-master-node')
        string(name: 'workload cluster - control plane', description: ' workload-cluster- master node')
        string(name: 'workload cluster - compute node', description: 'workload cluster - worker node')
    }
    
    stages {

        stage('Configure SSH') {
            steps {
                script {

                    sh """
                        pwd
                        ./test.sh ${params.sshUserName} ${params.sshPassword} ${params.host1} ${params.host2} ${params.host3}
                    """
                }
            }
        }
    }
}































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
