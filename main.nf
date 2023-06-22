process sayHello {
    output:
        stdout

    """
    printf 'Hello world!' 
    """
}

workflow {
    sayHello | view
}
