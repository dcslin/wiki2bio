from nvidia/cuda:8.0-cudnn7-devel

run apt-get update
run apt-get install -y python python-pip vim

run pip install tensorflow-gpu==1.0
run pip install nltk

ENV LD_LIBRARY_PATH="/usr/local/cuda-8.0/extras/CUPTI/lib64:${LD_LIBRARY_PATH}"
