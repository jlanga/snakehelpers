rule samtools__dict__fa:
    input:
        "{prefix}.fa",
    output:
        "{prefix}.dict",
    log:
        "{prefix}.dict.log",
    conda:
        "../../environments/samtools.yml"
    shell:
        """
        samtools dict \
            {input} \
            --output {output} \
        2> {log} 1>&2
        """


rule samtools__dict__fagz:
    """Generate a dictionary from a fa.gz"""
    input:
        "{prefix}.fa.gz",
    output:
        "{prefix}.dict",
    log:
        "{prefix}.dict.log",
    conda:
        "../../environments/samtools.yml"
    shell:
        """
        samtools dict \
            {input} \
            --output {output} \
        2> {log} 1>&2
        """
