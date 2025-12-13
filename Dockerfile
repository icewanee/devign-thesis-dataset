FROM nvidia/cuda:12.4.0-runtime-ubuntu22.04

RUN apt-get update
RUN apt-get install -y software-properties-common git screen nano htop
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update
RUN apt-get install -y python3.7 python3.7-distutils python3-pip
RUN add-apt-repository -y ppa:openjdk-r/ppa
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    openjdk-8-jdk \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY requirements.txt requirements.txt
RUN python3.7 -m pip install -r requirements.txt
RUN apt-get update && apt-get install -y curl unzip wget sudo

WORKDIR /app/devign/joern
RUN curl -L "https://github.com/joernio/joern/releases/latest/download/joern-install.sh" -o joern-install.sh
RUN chmod u+x joern-install.sh
RUN ./joern-install.sh --install-dir=/app/devign/joern --version=v1.0.170 --reinstall --without-plugins

COPY . /app/devign/

WORKDIR /app/devign
CMD ["bash"]
