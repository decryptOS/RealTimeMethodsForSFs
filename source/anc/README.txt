Generate figures in the "anc" folder by calling the shell scripts

sh ./sf_m1_g0.06_lam4_T0.5.sh
sh ./sf_m1_g0.06_lam4_T1.sh
sh ./sf_m1_g0.06_lam4_T2.sh
sh ./sf_m1_g0.06_lam4_T4.sh
sh ./sf-td_m1_g0.06_lam0.03125_T32.sh
sh ./sf-td_m1_g0.06_lam4_T32.sh
sh ./sf-td-gauss-gauss_m1_g0.06_lam4_T0.5.sh
sh ./splot_m1_g0.03_lam4_T0.5.sh
sh ./splot_m1_g0.03_lam4_T4.sh

The scripts will generate the plots using gnuplot (we used version
5.4). The resulting .pdf files are stored in the same directory with
the same name as the scripts.
