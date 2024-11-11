include: "samtools/faidx.smk"
include: "samtools/flagstats.smk"
include: "samtools/idxstats.smk"
include: "samtools/stats.smk"
include: "samtools/index.smk"


# rule samtools__test:
#     input:
#         "resources/test.bam.bai",
#         "resources/test.idxstats.tsv",
#         "resources/test.flagstats.txt",
#         "resources/test.stats.tsv",
#         "resources/test.fa.fai",
#         "resources/test.fa.gz.fai",
#         "resources/test.fa.gz.gzi",
