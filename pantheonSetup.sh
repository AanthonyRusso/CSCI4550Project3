echo "updating submodules"
git submodule update --init --recursive

echo "installing dependencies"
tools/install_deps.sh
src/experiments/setup.py --install-deps --all
echo "creating needed trace file"
echo "12" > src/experiments/1mbps.trace
echo "Done!"
echo "Run schemesTesting.sh to test cubic, vegas, and bbr"
