[![Tests](https://github.com/jlanga/snakehelpers/actions/workflows/main.yml/badge.svg)](https://github.com/jlanga/snakehelpers/actions/workflows/main.yml)


# `snakehelpers`: silly snakemake rules to accelerate development

Bioinformatic pipelines have constantly predictable auxiliary files next to necessary outputs:

- `file.bam` -> `file.bam.bai`
- `reference.fa.gz` -> `reference.fa.gz.fai`, `reference.fa.gz.gzi`


To prevent writing all the predictable boilerplate code that pollute your snakefiles, copy the following lines to your `Snakefile`:

```snakemake
module helpers:
    snakefile:
        github("jlanga/snakehelpers", path="workflow/Snakefile", branch="main")
    config:
        params

use rule * from helpers as helpers__*
```

This will add all the rules in this repo to yours so you don't need ever to write again `samtools index {input.bam}`


## Implemented helpers

- `fastqc`
- `samtools`
  - `index` - bam
  - `faidx` - fa, fa.gz
  - `stats` - bam
  - `idxstats` - bam
  - `flagstats` - bam
