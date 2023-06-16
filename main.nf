params.labels = ['A', 'B', 'C', 'D']

process myProcess {
    input:
    val label from params.labels

    echo "Running task ${label}"
    script:
    """
    # Add your actual processing commands here
    sleep 10
    """
}

workflow {
    scatter (label in params.labels) {
        myProcess(label)
    }
}
