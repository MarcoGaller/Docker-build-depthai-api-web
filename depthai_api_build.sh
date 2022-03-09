git submodule update --init --recursive

cmake -H. -Bbuild -D DEPTHAI_BUILD_DOCS=ON -D DEPTHAI_PYTHON_BUILD_DOCS=ON

cmake --build build --target sphinx

# python3 -m http.server --bind 0.0.0.0 8000 --directory build/docs/sphinx
