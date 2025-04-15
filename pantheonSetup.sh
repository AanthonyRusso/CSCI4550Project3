echo "updating submodules"
git submodule update --init --recursive

echo "installing dependencies"
tools/install_deps.sh
src/experiments/setup.py --install-deps --all
echo "12" > 1mbps.trace
