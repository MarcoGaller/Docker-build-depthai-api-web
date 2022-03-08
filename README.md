`docker build -t depthai_api_build:1.1 .`
`docker run --rm -it -v /home/$USER/tmp/depthai-python:/build --name api_build  depthai_api_build:1.1 bash ./depthai_api_build.sh`

