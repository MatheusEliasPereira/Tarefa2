set term pdfcairo
set output "pontofixo075.pdf"
set key font "Times New Roman"
set tics font "Times New Roman"
set title "Solução de cos x - x = 0" font "Times New Roman"
set ylabel "Valores de x" font "Times New Roman"
set xlabel "Iterações" font "Times New Roman"
plot "pontofixo_075.txt" u 0:1 w lp ls 1.5 pt 7 ps 0.5 lc 6 t"x_0 = 0.75"
set term x11

set term pdfcairo
set key font "Times New Roman"
set output "pontofixo150.pdf"
set tics font "Times New Roman"
set title "Solução de cos x - x = 0" font "Times New Roman"
set ylabel "Valores de x" font "Times New Roman"
set xlabel "Iterações" font "Times New Roman"
plot "pontofixo_150.txt" u 0:1 w lp ls 1.5 pt 7 ps 0.5 lc 7 t"x_0 = 1.5"
set point 7
set term x11
