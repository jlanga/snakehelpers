for extension in ["fa", "fa.gz"]:

    rule:
        """Get a dict file from a fasta"""
        name:
            f"samtools__dict__{extension}"
        input:
            f"{{prefix}}.{extension}",
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
