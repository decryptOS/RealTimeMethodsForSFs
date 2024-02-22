set terminal pdf
set output "splot_m1_g0.03_lam4_T4.pdf"

set logscale y

# set labels on axes
set xlabel "{/Symbol w}"
set ylabel "spectral function {/Symbol r}({/Symbol w})"

set format y "%2.0t{/Symbol \264}10^{%L}"

set for [i=1:6] style line i linewidth 10

set xrange [0:8]
set yrange [2*1e-5:2*1e0]

plot "./sf-data/class/spec_class_m1_g0.06_lam4_T4.dat" using 1:(2*$2) smooth unique title "class. stat." lt -1 lw 1 lc "#80000000", \
     "./sf-data/frg/spec_CL_rHBCS4_m1.000000_g0.030000_b0.250000_l4.000000.dat" using 1:(2*$2) smooth unique title "HB+CS, {/Symbol a}' = 1/√(4{/Symbol p}), cl. limit" lw 2 lc rgb "#00e69f00", \
     "./sf-data/frg/spec_NCL_rHBCS4_m1.000000_g0.030000_b0.250000_l4.000000.dat" using 1:(2*$2) smooth unique title "HB+CS, {/Symbol a}' = 1/√(4{/Symbol p})" lw 2 lc rgb "#009400d3", \
     "./sf-data/frg/spec_NCL_rHBCS4_a0.500000_m1.000000_g0.030000_b0.250000_l4.000000.dat" using 1:(2*$2) smooth unique title "HB+CS, {/Symbol a}' = 1/2" lw 2 lc rgb "#509400d3", \
     "./sf-data/frg/spec_NCL_rCSD_m1.000000_g0.030000_b0.250000_l4.000000.dat" using 1:(2*$2) smooth unique title "CS+Damping" lw 2 lc rgb "#009e73"


