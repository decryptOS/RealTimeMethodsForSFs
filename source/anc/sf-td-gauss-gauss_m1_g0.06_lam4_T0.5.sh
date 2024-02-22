#!/bin/sh

# m=1, g=0.06, lam=4, T=0.5
sh gen-plot-td-gauss-gauss.sh \
    "sf-td-gauss-gauss_m1_g0.06_lam4_T0.5.pdf" \
    "sf_exact_m1_g0.06_lam4_T0.5.dat" \
    "spec_gauss_m1_g0.06_lam4_T0.5s.dat" \
    "spec_gauss_m1_g0.06_lam4_T0.5a.dat" \
    0.000 \
    8 \
    1e-5 \
    10 \
    1000 \
    > "ps-td-gauss-gauss_m1_g0.06_lam4_T0.5.gnuplot"

gnuplot "ps-td-gauss-gauss_m1_g0.06_lam4_T0.5.gnuplot"
