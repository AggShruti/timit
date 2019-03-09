set samples 1000
set xrange [0.000000:1.000000]
set autoscale y
set size 0.78, 1.0
set nogrid
set ylabel 'Counts'
set xlabel 'Confidence Measure'
set title  'Confidence scores for exp/sgmm2_4_mmi_b0.1/decode_test_it2/score_4/ctm_39phn.filt'
plot 'exp/sgmm2_4_mmi_b0.1/decode_test_it2/score_4/ctm_39phn.filt.hist.dat' using 1:2 '%f%f' title 'All Conf.' with lines, \
     'exp/sgmm2_4_mmi_b0.1/decode_test_it2/score_4/ctm_39phn.filt.hist.dat' using 1:2 '%f%*s%f' title 'Correct Conf.' with lines, \
     'exp/sgmm2_4_mmi_b0.1/decode_test_it2/score_4/ctm_39phn.filt.hist.dat' using 1:2 '%f%*s%*s%f' title 'Incorrect Conf.' with lines
set size 1.0, 1.0
