#!/bin/sh

# m=1, g=0.06, lam=4, T=1
sh gen-plot.sh \
    "sf_m1_g0.06_lam4_T1.pdf" \
    "sf_exact_m1_g0.06_lam4_T1.dat" \
    "spec_class_m1_g0.06_lam4_T1.dat" \
    "spec_NCL_rHBCS4_m1.000000_g0.030000_b1.000000_l4.000000.dat" \
    "spec_gauss_m1_g0.06_lam4_T1s.dat" \
    "sf_pt_m1_g0.06_lam4_T1.dat" \
    10 \
    0.5e-5 \
    5 \
    1000 \
    > "ps_m1_g0.06_lam4_T1.gnuplot"

gnuplot "ps_m1_g0.06_lam4_T1.gnuplot"
