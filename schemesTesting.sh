echo "Making sure schemes needed are set up"
src/experiments/setup.py --setup --schemes "bbr"
src/experiments/setup.py --setup --schemes "cubic"
src/experiments/setup.py --setup --schemes "vegas"
sudo sysctl -w net.ipv4.ip_forward=1
echo "Testing BBR, Cubic, Vegas with 200 ms RTT"
src/experiments/test.py local --schemes "bbr cubic vegas" --data-dir fullResultsBad --uplink-trace src/experiments/1mbps.trace --downlink-trace src/experiments/1mbps.trace --prepend-mm-cmds "mm-delay 100" --runtime 60

echo "Testin BBR, Cubic, Vegas with 5 ms RTT, 12mbps"
src/experiments/test.py local --schemes "bbr cubic vegas" --data-dir fullResults --uplink-trace src/experiments/12mbps.trace --downlink-trace src/experiments/12mbps.trace --prepend-mm-cmds "mm-delay 5" --runtime 60

