#!/bin/sh

# m=1, g=0.06, lam=0.03125, T=32
sh gen-plot-td-exact.sh \
    "sf-td_m1_g0.06_lam0.03125_T32.pdf" \
    "sf_exact_m1_g0.06_lam0.03125_T32.dat" \
    "spec_class_m1_g0.06_lam0.03125_T32.dat" \
    "spec_NCL_rHBCS4_m1.000000_g0.030000_b0.031250_l0.031250.dat" \
    "spec_gauss_m1_g0.06_lam0.03125_T32s.dat" \
    "spec_gauss_m1_g0.06_lam0.03125_T32a.dat" \
    "sf_pt_m1_g0.06_lam0.03125_T32.dat" \
    5 \
    1e-5 \
    2 \
    > "ps-td_m1_g0.06_lam0.03125_T32.gnuplot"

gnuplot "ps-td_m1_g0.06_lam0.03125_T32.gnuplot"
