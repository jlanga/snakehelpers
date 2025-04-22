for extension in ["gtf", "gff"]:

    rule:
        """Index a GTF/GFF file with tabix"""
        name:
            f"htslib__tabix__{extension}gz"
        input:
            f"{{prefix}}.{extension}.gz",
        output:
            f"{{prefix}}.{extension}.gz.tbi",
        log:
            f"{{prefix}}.{extension}.gz.tbi.log",
        params:
            "--preset gff",
        wrapper:
            "v4.7.2/bio/tabix/index"


# conda:
#     "../../environments/htslib.yml"
# shell:
#     """
#     tabix \
#         --preset gff \
#         {input} \
#     2> {log} 1>&2
#     """
