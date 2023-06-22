process sayHello {
    container 'alpine'
    executor 'kuberun'

    pod {
        nodeAffinity {
            requiredDuringSchedulingIgnoredDuringExecution {
                nodeSelectorTerms {
                    with {
                        matchExpressions {
                            key 'kubernetes.io/hostname'
                            operator 'In'
                            values ' hu-worker-c27'
                        }
                    }
                }
            }
        }
    }

    """
    echo 'Hello world!' 
    """
}

workflow {
  sayHello()
}
