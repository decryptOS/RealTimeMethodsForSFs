#!/bin/sh

# m=1, g=0.06, lam=4, T=0.5
sh gen-plot.sh \
    "sf_m1_g0.06_lam4_T0.5.pdf" \
    "sf_exact_m1_g0.06_lam4_T0.5.dat" \
    "spec_class_m1_g0.06_lam4_T0.5.dat" \
    "spec_NCL_rHBCS4_m1.000000_g0.030000_b2.000000_l4.000000.dat" \
    "spec_gauss_m1_g0.06_lam4_T0.5s.dat" \
    "sf_pt_m1_g0.06_lam4_T0.5.dat" \
    8 \
    1e-5 \
    10 \
    1000 \
    > "ps_m1_g0.06_lam4_T0.5.gnuplot"

gnuplot "ps_m1_g0.06_lam4_T0.5.gnuplot"
