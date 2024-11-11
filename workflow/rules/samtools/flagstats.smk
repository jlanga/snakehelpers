rule samtools__flagstats_bam:
    """Compute flagstats for a bam"""
    input:
        bam="{prefix}.bam",
        bai="{prefix}.bam.bai",
    output:
        txt="{prefix}.flagstats.txt",
    log:
        "{prefix}.flagstats.log",
    wrapper:
        "v4.7.2/bio/samtools/idxstats"
