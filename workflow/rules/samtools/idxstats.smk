rule samtools__idxstats__bam:
    """Compute idxstats for a bam"""
    input:
        bam="{prefix}.bam",
        bai="{prefix}.bam.bai",
    output:
        tsv="{prefix}.idxstats.tsv",
    log:
        "{prefix}.idxstats.log",
    wrapper:
        "v4.7.2/bio/samtools/idxstats"
