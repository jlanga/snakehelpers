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


rule test__samtools__index:
    input:
        "resources/test.bam.bai",
