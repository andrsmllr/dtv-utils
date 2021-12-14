set +x

echo ""
echo "#========================================================================="
echo "# atsc3rate example"
echo "#========================================================================="
fft_size=32
guard_interval=11/4096
number_of_data_symbols=1000
number_of_preamble_symbols=100
code_rate=5/6
modulation=3
frame_size=normal
pilot_pattern=15
first_SBS=10
L1_basic_mode=0
L1_detail_mode=0
reduced_carriers=0
pilot_boost=0
papr_mode=0
./atsc3rate $fft_size $guard_interval $number_of_data_symbols $number_of_preamble_symbols \
    $code_rate $modulation $frame_size $pilot_pattern $first_SBS $L1_basic_mode $L1_detail_mode \
    $reduced_carriers $pilot_boost $papr_mode

echo ""
echo "#========================================================================="
echo "# dvbs2rate example"
echo "#========================================================================="
symbol_rate=22000
./dvbs2rate -sxv $symbol_rate

echo ""
echo "#========================================================================="
echo "# dvbt2rate example"
echo "#========================================================================="
channel_bandwidth=6
fft_size=32
guard_interval=1/192
number_of_data_symbols=1000
number_of_fec_blocks=100
code_rate=5/6
modulation=3
frame_size=100
extended_carrier=0
pilot_pattern=1
L1_modulation=0
./dvbt2rate $channel_bandwidth $fft_size $guard_interval $number_of_data_symbols \
    $number_of_fec_blocks $code_rate $modulation $frame_size $extended_carrier \
    $pilot_pattern $L1_modulation

echo ""
echo "#========================================================================="
echo "# dvbtrate example"
echo "#========================================================================="
channel_bandwidth=6
./dvbtrate $channel_bandwidth
