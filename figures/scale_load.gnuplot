load "common.gnuplot"
set key bottom right
set xrange [-50:1050]
set yrange [0:150]
set xlabel "iperf Throughput [Mbps]"
set ylabel "Simulation Time [Min.]"
#set datafile separator "\t"
#set logscale x
plot \
  'scale_load.dat' using 1:2:3 notitle with yerrorbars pointtype 0, "" notitle with lines linestyle 1
  #'scale_load.dat' using 1:2 notitle with linespoints
