#play -n -c1 synth 6 square %-15:%-9 trapezium %-11:%-5 square %-14+%-11 fade h 1 6 1 gain -14

#play -n -c1 synth 6 square %-3 trapezium %-2 square %-1 fade h 1.5 6 0.5 gain -14

play -n -c1 synth 6 square %$[RANDOM % 24 - 12] trapezium %$[RANDOM % 24 - 12] square %$[RANDOM % 24 - 12] fade h 1.5 6 0.5 gain -14
