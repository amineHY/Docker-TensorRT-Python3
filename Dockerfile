FROM nvcr.io/nvidia/tensorrt:19.05-py3

LABEL maintainer "Amine Hadj-Youcef  <amine.hadjyoucef@dronevolt.com>


# install python samples for tensorrt
# RUN /opt/tensorrt/python/python_setup.sh


# install prerequisites
RUN apt-get update && apt-get install -y --no-install-recommends \
    protobuf-compiler \
    geany \
    libprotoc-dev \
    python3-tk \
    eog \
    gedit
    
        
# install necessary python packages
RUN pip3 install numpy==1.16.4 \
	onnx==1.1.1 \
	pycuda==2018.1.1 \
	Pillow==6.0.0 \
	wget==3.2 \
	matplotlib==3.1.0

# set the working directory
WORKDIR /workspace

