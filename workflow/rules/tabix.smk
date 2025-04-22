for extension in ["gtf", "gff"]:

    rule:
        """Index a GTF/GFF file with tabix"""
        name:
            f"tabix__{extension}gz"
        input:
            f"{{prefix}}.{extension}.gz",
        output:
            f"{{prefix}}.{extension}.gz.tbi",
        log:
            f"{{prefix}}.{extension}.gz.tbi.log",
        shell:
            """
            tabix \
                --preset gff \
                {input} \
            2> {log} 1>&2
            """
