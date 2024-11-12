rule samtools__stats__bam:
    input:
        bam="{prefix}.bam",
    output:
        "{prefix}.stats.tsv",
    log:
        "{prefix}.stats.log",
    wrapper:
        "v4.7.2/bio/samtools/stats"


rule samtools__stats__cram:
    input:
        cram="{prefix}.cram",
    output:
        "{prefix}.stats.tsv",
    log:
        "{prefix}.stats.log",
    wrapper:
        "v4.7.2/bio/samtools/stats"
