# Docker-TensorRT-Python3
This docker image contains a development envirenment for AI-based computer vision application,
- OpenCV
- TensorRT
- cuDNN
- Jupyter notebook
- Python3
- ...

## Run the docker container"
	`xhost +`
	`docker run -it --rm -v $(pwd):/workspace --runtime=nvidia -w /workspace -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY aminehy/tensorrt-opencv-python3:v1.0`


## Build a docker image from the Dockefile"
	`docker build -t aminehy/tensorrt-opencv-python3:v1.0 .`

## Push the docker image to docker hub"
	`docker push aminehy/tensorrt-opencv-python3:v1.0`


