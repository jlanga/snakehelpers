for file in ["fa", "faa", "fna", "fasta"]:

    rule:
        """Index a fasta file"""
        name:
            f"samtools__faidx__{file}"
        input:
            fa=f"{{prefix}}.{file}",
        output:
            fai=f"{{prefix}}.{file}.fai",
        log:
            f"{{prefix}}.{file}.faidx.log",
        wrapper:
            "v4.7.2/bio/samtools/faidx"


for file in ["fa.gz", "fasta.gz", "fna.gz", "faa.gz"]:

    rule:
        """Index a compressed fasta file"""
        name:
            f"samtools__faidx__{file}"
        input:
            fa=f"{{prefix}}.{file}",
        output:
            fai=f"{{prefix}}.{file}.fai",
            gzi=f"{{prefix}}.{file}.gzi",
        log:
            f"{{prefix}}.{file}.faidx.log",
        wrapper:
            "v4.7.2/bio/samtools/faidx"
