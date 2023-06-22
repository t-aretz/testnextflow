process sayHello {
    container 'your-container-image'
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
