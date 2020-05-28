FROM nvcr.io/nvidia/l4t-base:r32.2
RUN apt-get update -y 
RUN apt-get install python3-pip -y 
RUN pip3 install -U pip
RUN DEBIAN_FRONTEND=noninteractive apt-get install libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev liblapack-dev libblas-dev gfortran -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install python3 python-dev python3-dev build-essential libssl-dev libffi-dev libxml2-dev libxslt1-dev zlib1g-dev -yq
RUN pip3 install -U numpy grpcio absl-py py-cpuinfo psutil portpicker six mock requests gast h5py astor termcolor protobuf keras-applications keras-preprocessing wrapt google-pasta
RUN python3 -m pip install --upgrade pip
RUN pip3 install --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v43 tensorflow-gpu==1.15.0+nv19.12
RUN pip3 install pandas tqdm
