load "common.gnuplot"
set key bottom right
set xrange [0:85]
set yrange [0:110]
set xlabel "Throughput [Krequest/sec]"
set ylabel "Latency [us]"
set datafile separator " "
plot \
  'nopaxos_seq.dat' using ($1/1000):2 title 'End-host Sequencer' with linespoints, \
  'nopaxos_seq.dat' using ($3/1000):4 title 'Switch Sequencer' with linespoints, \
  'nopaxos_seq.dat' using ($5/1000):6 title 'Multi-Paxos' with linespoints
