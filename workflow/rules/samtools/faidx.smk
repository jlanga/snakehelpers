rule samtools__faidx__fagz:
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


rule samtools__index__fa:
    input:
        fa="{prefix}.fa",
    output:
        "{prefix}.fa.fai",
    log:
        "{prefix}.fa.fai.log",
    wrapper:
        "v4.7.2/bio/samtools/faidx"
