#!/bin/sh

# USAGE
# in root dir: sh gen-plot.sh <PARAMS>
# generates GNUplot files in current working directory

OUTPUT=$1
EXACT_FN=$2
CLASS_FN=$3
FRG_FN=$4
GAUSS_FN=$5
PT_FN=$6
MAX_X=$7
MIN_Y=$8
MAX_Y=$9
NOISE_MAX_W=${10}



cat << EOF
set terminal pdf
set output "${OUTPUT}"


set logscale y


set xrange [0:${MAX_X}]
set yrange [2*${MIN_Y}:2*${MAX_Y}]


# set labels on axes
set xlabel "{/Symbol w}"
set ylabel "spectral function {/Symbol r}({/Symbol w})"


set format y "%2.0t{/Symbol \264}10^{%L}"


do for [i=1:4] {
    set style line i linewidth 10
}


# shaded region
set style rect fc rgb "#00000000" fs solid 0.05 noborder
set obj rect from ${NOISE_MAX_W}, graph 0 to graph 1, graph 1



# mean field mass shift
#set arrow from mf_m,graph(0,0) to mf_m,graph(1,1) nohead


# spectral function comparison
plot "./sf-data/pt/${PT_FN}" using (\$1):(\$2) with linespoints title "2-loop PT"             smooth unique lc rgb "#80000000" dt 2, \
    "./sf-data/exact/${EXACT_FN}" using (\$1):(2*\$2) with linespoints title "exact diag."            smooth unique lc rgb "dark-violet", \
    "./sf-data/class/${CLASS_FN}"  using (\$1):(2*\$2) with linespoints title "class stat."            smooth unique lc rgb "#00009e73", \
    "./sf-data/frg/${FRG_FN}"      using (\$1):(2*\$2) with linespoints title "real-time FRG"          smooth unique lc rgb "#0056b4e9", \
    "./sf-data/gauss/${GAUSS_FN}"  using (\$1):(2*\$2) with linespoints title "GSA (static)"           smooth unique lc rgb "#00e69f00"

EOF
