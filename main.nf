process sayHello {
    """
    echo 'Hello world!' 
    """
}

workflow {
  sayHello()
}
