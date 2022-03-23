rm -rf build

git submodule update --init --recursive

cmake -H. -Bbuild -D DEPTHAI_BUILD_DOCS=ON -D DEPTHAI_PYTHON_BUILD_DOCS=ON

cmake --build build --target sphinx

chown -R 1000:1000 build