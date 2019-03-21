git clone git@github.com:dcslin/wiki2bio.git
cd wiki2bio

docker build -t w2b .
docker run --rm -it --runtime nvidia -v `pwd`:/wiki2bio w2b nvidia-smi
docker run --rm -it --runtime nvidia -v `pwd`:/wiki2bio w2b /bin/bash


python preprocess.py
python Main.py
