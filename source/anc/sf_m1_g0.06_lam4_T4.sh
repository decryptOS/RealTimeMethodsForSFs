#!/bin/sh

# m=1, g=0.06, lam=4, T=4
sh gen-plot.sh \
    "sf_m1_g0.06_lam4_T4.pdf" \
    "sf_exact_m1_g0.06_lam4_T4.dat" \
    "spec_class_m1_g0.06_lam4_T4.dat" \
    "spec_NCL_rHBCS4_m1.000000_g0.030000_b0.250000_l4.000000.dat" \
    "spec_gauss_m1_g0.06_lam4_T4s.dat" \
    "sf_pt_m1_g0.06_lam4_T4.dat" \
    10 \
    0.5e-5 \
    1 \
    1000 \
    > "ps_m1_g0.06_lam4_T4.gnuplot"

gnuplot "ps_m1_g0.06_lam4_T4.gnuplot"
