rule samtools__index__bam:
    """Index a bam file"""
    input:
        "{prefix}.bam",
    output:
        "{prefix}.bam.bai",
    log:
        "{prefix}.bam.bai.log",
    wrapper:
        "v4.7.2/bio/samtools/index"


rule samtools__index__cram:
    """Index a cram file"""
    input:
        "{prefix}.cram",
    output:
        "{prefix}.cram.crai",
    log:
        "{prefix}.cram.crai.log",
    wrapper:
        "v4.7.2/bio/samtools/index"
