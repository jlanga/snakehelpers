rule bcftools__index__vcfgz_csi:
    """Index a vcf.gz"""
    input:
        "{prefix}.vcf.gz",
    output:
        "{prefix}.vcf.gz.csi",
    conda:
        "../../environments/bcftools.yml"
    log:
        "{prefix}.vcf.gz.csi.log",
    shell:
        "bcftools index --csi {input} 2> {log} 1>&2"


rule bcftools__index__vcfgz_tbi:
    """Index a vcf.gz in tbi format"""
    input:
        "{prefix}.vcf.gz",
    output:
        "{prefix}.vcf.gz.tbi",
    conda:
        "../../environments/bcftools.yml"
    log:
        "{prefix}.vcf.gz.tbi.log",
    shell:
        "bcftools index --tbi {input} 2> {log} 1>&2"
