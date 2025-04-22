for extension in ["bam", "cram"]:

    rule:
        """Index a bam or cram file"""
        name:
            f"samtools__stats__{extension}"
        input:
            f"{{prefix}}.{extension}",
        output:
            f"{{prefix}}.stats.tsv",
        log:
            f"{{prefix}}.stats.log",
        wrapper:
            "v4.7.2/bio/samtools/stats"
