echo "Making sure schemes needed are set up"
src/experiments/setup.py --setup --schemes "bbr"
src/experiments/setup.py --setup --schemes "cubic"
src/experiments/setup.py --setup --schemes "vegas"
echo "Cubic test 12mbps 10ms RTT..."
src/experiments/test.py local --schemes "cubic" --data-dir cubicResults --uplink-trace src/experiments/12mbps.trace --downlink-trace src/experiments/12mbps.trace --prepend-mm-cmds "mm-delay 5" --runtime 60

echo "Cubic test 1mbps 200 RTT running..."
src/experiments/test.py local --schemes "cubic" --data-dir cubicResultsBad --uplink-trace src/experiments/1mbps.trace --downlink-trace src/experiments/1mbps.trace --prepend-mm-cmds "mm-delay 100" --runtime 60

echo "Vegas test 12mbps 10ms RTT..."
src/experiments/test.py local --schemes "vegas" --data-dir vegasResults --uplink-trace src/experiments/12mbps.trace --downlink-trace src/experiments/12mbps.trace --prepend-mm-cmds "mm-delay 5" --runtime 60

echo "Vegas test 1mbps 200 RTT running..."
src/experiments/test.py local --schemes "vegas" --data-dir vegasResultsBad --uplink-trace src/experiments/1mbps.trace --downlink-trace src/experiments/1mbps.trace --prepend-mm-cmds "mm-delay 100" --runtime 60

echo "Copa test 12mbps 10ms RTT..."
src/experiments/test.py local --schemes "bbr" --data-dir bbrResults --uplink-trace src/experiments/12mbps.trace --downlink-trace src/experiments/12mbps.trace --prepend-mm-cmds "mm-delay 5" --runtime 60

echo "Copa test 1mbps 200 RTT running..."
src/experiments/test.py local --schemes "bbr" --data-dir bbrResultsBad --uplink-trace src/experiments/1mbps.trace --downlink-trace src/experiments/1mbps.trace --prepend-mm-cmds "mm-delay 100" --runtime 60

