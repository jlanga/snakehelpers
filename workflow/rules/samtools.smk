rule samtools__faidx_fagz:
    """Index a gzipped fa file"""
    input:
        "{prefix}.fa.gz",
    output:
        fai="{prefix}.fa.gz.fai",
        gzi="{prefix}.fa.gz.gzi",
    log:
        "{prefix}.fa.gz.log",
    wrapper:
        "v4.7.2/bio/samtools/faidx"


rule samtools__index_bam:
    """Index a bam file"""
    input:
        "{prefix}.bam",
    output:
        "{prefix}.bam.bai",
    log:
        "{prefix}.bam.bai.log",
    wrapper:
        "v4.7.2/bio/samtools/index"


rule samtools__idxstats_bam:
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


rule samtools__stats_bam:
    input:
        bam="{prefix}.bam",
    output:
        "{prefix}.stats.tsv",
    log:
        "{prefix}.stats.log",
    wrapper:
        "v4.7.2/bio/samtools/stats"


rule samtools__index_fa:
    input:
        fa="{prefix}.fa",
    output:
        "{prefix}.fa.fai",
    log:
        "{prefix}.fa.fai.log",
    wrapper:
        "v4.7.2/bio/samtools/faidx"
