load "common.gnuplot"
set key bottom right
#set xrange [-5:155]
set yrange [0:11]
set xlabel "Marking Threshold K [1500B]"
set ylabel "Throughput [Gbps]"
set datafile separator "\t"
plot \
  'dctcp_ns3.dat' using ($1/1500):2 \
      title 'ns-3' with linespoints, \
  'dctcp.dat' using ($1/1500):3 \
      title 'Physical Testbed (ground truth)' with linespoints lw 5, \
  'dctcp.dat' using ($1/1500):5 \
      title '\sysname (gem5 + i40e + ns-3)' with linespoints

#'dctcp.dat' using ($1/1500):7 \
#    title 'ModES [QT]' with linespoints, \
