for out_extension in ["csi", "tbi"]:

    rule:
        """Index a vcf file with csi or tbi extension"""
        name:
            f"bcftools__index__vcfgz_{out_extension}"
        input:
            f"{{prefix}}.vcf.gz",
        output:
            f"{{prefix}}.vcf.gz.{out_extension}",
        log:
            f"{{prefix}}.vcf.gz.{out_extension}.log",
        wrapper:
            "v4.7.2/bio/bcftools/index"
