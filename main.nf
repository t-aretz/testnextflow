params.labels = ['A', 'B', 'C', 'D']

process myProcess {
    input:
    val label from params.labels

    output:
    file "output_${label}.txt"

    """
    echo "Running task ${label}"
    sleep 10
    touch output_${label}.txt
    """
}

workflow {
    scatter (label in params.labels) {
        myProcess(label)
    }
}
