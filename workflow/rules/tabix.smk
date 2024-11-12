rule tabix__gtfgz:
    input:
        "{prefix}.gtf.gz",
    output:
        "{prefix}.gtf.gz.tbi",
    log:
        "{prefix}.gtf.gz.tbi.log",
    conda:
        "../environments/htslib.yml"
    shell:
        """
        tabix \
            --preset gff \
            {input} \
        2> {log} 1>&2
        """
