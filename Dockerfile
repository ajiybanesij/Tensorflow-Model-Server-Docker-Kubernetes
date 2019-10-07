FROM ubuntu:latest


RUN  apt-get update &&  apt-get install -y \
        build-essential \
        curl \
        libcurl3-dev \
        git \
        libfreetype6-dev \
        libpng-dev \
        libzmq3-dev \
        pkg-config \
        python-dev \
        python-numpy \
        python-pip \
        software-properties-common \
        swig \
        zip \
        zlib1g-dev

RUN apt-get install -y libstdc++6

RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test 

RUN apt-get -y upgrade

RUN apt-get -y dist-upgrade

RUN apt-get -y install python-pip

RUN pip install grpcio

RUN pip install tensorflow

RUN pip install tensorflow-serving-api

RUN echo "deb [arch=amd64] http://storage.googleapis.com/tensorflow-serving-apt stable tensorflow-model-server tensorflow-model-server-universal" |  tee /etc/apt/sources.list.d/tensorflow-serving.list

RUN curl https://storage.googleapis.com/tensorflow-serving-apt/tensorflow-serving.release.pub.gpg | apt-key add -

RUN apt-get -y update &&  apt-get -y install tensorflow-model-server

COPY . /home

# Define working directory.
WORKDIR /home

# Define default command.


CMD [ "tensorflow_model_server", "--rest_api_port=8501", "--model_name=MODEL_NAME", "--model_base_path=/home/models/MODEL_NAME"]