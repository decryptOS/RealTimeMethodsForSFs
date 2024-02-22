#!/bin/sh

# m=1, g=0.06, lam=4, T=32
sh gen-plot-td-exact.sh \
    "sf-td_m1_g0.06_lam4_T32.pdf" \
    "sf_exact_m1_g0.06_lam4_T32.dat" \
    "spec_class_m1_g0.06_lam4_T32.dat" \
    "spec_NCL_rHBCS4_m1.000000_g0.030000_b0.031250_l4.000000.dat" \
    "spec_gauss_m1_g0.06_lam4_T32s.dat" \
    "spec_gauss_m1_g0.06_lam4_T32a.dat" \
    "sf_pt_m1_g0.06_lam4_T32.dat" \
    15 \
    1e-6 \
    1 \
    > "ps-td_m1_g0.06_lam4_T32.gnuplot"

gnuplot "ps-td_m1_g0.06_lam4_T32.gnuplot"
