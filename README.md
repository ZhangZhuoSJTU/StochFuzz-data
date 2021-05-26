# StochFuzz-data

The experiment data of StochFuzz paper

+ `O2`: The experiments using the normal Google FTS
+ `O2_crash`: The time-to-discovery experiment using the normal Google FTS
+ `inline`: The experiments using the crafted Google FTS with data forcely inlining
+ `ijon`: The IJON experiment
+ `retrowrite`: The experiment using the fuzzing benchmark from RetroWrite

Under each working directory (e.g., O2/freetype2-2017/), there are multiple subdirectories named with the `result_` prefix. These subdirectories are the fuzzing metadata.

Programs named with the `.normal` suffix are the target stripped binaries. Similarly, programs named with `.afl` and `.afl.clang` suffixes are compiled by __afl-gcc__ and __afl-clang-fast__, respectively. 

Note that under the `inline` directory, all the programs are compiled with data forcely inlined (i.e., compiled with .rodata section and .text section interleaved).
