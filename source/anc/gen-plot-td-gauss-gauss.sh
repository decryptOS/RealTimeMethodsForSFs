#!/bin/sh

# USAGE
# in root dir: sh gen-plot-td-gauss-gauss.sh <PARAMS>
# generates GNUplot files in current working directory for
# time dependence comparison in Gaussian-state approximation
# for the *low* temperature regime

OUTPUT=$1
EXACT_FN=$2
GAUSS_FN=$3
GAUSS2_FN=$4
MEAN_FIELD=$5
MAX_X=$6
MIN_Y=$7
MAX_Y=$8
NOISE_MAX_W=$9



cat << EOF
set terminal pdf
set output "${OUTPUT}"

# inset graph for flank
set multiplot

# move legend to lower left
set key bottom left
set key Left

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


mf_m = ${MEAN_FIELD}


# mean field mass shift
#set arrow from mf_m,graph(0,0) to mf_m,graph(1,1) nohead


# show arrow to inset plot
set arrow from 4.5,5e-2 to 2.5,1e-2


# spectral function comparison
plot "./sf-data/exact/${EXACT_FN}" using (\$1):(2*\$2) with linespoints title "exact diag."      smooth unique lc rgb "dark-violet", \
    "./sf-data/gauss/${GAUSS_FN}"  using (\$1):(2*\$2) with linespoints title "GSA (static)"     smooth unique lc rgb "#00e69f00", \
    "./sf-data/gauss/${GAUSS2_FN}" using (\$1):(2*\$2) with linespoints title "GSA (adiab.)"     smooth unique lc rgb "#00996900"

set size 0.35, 0.6
set origin 0.6, 0.35

# inset plot ranges are hardcoded
set xrange [1.4:2.4]
set yrange [2*1e-3:2*1e-1]

# hide labels on axes and legend on inset plot
unset xlabel
unset ylabel
unset key
unset arrow
unset ytics

# white background for inset
set object rectangle from graph 0,0 to graph 1,1 behind fillcolor rgb 'white' fillstyle solid noborder

# inset plot near flank
plot "./sf-data/exact/${EXACT_FN}" using (\$1):(2*\$2) with linespoints title "exact diag."      smooth unique lc rgb "dark-violet", \
    "./sf-data/gauss/${GAUSS_FN}"  using (\$1):(2*\$2) with linespoints title "GSA (static)"     smooth unique lc rgb "#00e69f00", \
    "./sf-data/gauss/${GAUSS2_FN}" using (\$1):(2*\$2)  with linespoints title "GSA (adiab.)"    smooth unique lc rgb "#00996900"

unset multiplot

EOF
