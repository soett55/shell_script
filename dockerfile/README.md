# 파이썬 3.4, 2.7 + jup + igraph


### docker build -t python-igraph:0.1 .

### docker run -it --name pt-igraph -p 18888:8888 -v [/datapath]:/docker python-igraph:0.1 /bin/bash

# 파이썬 3.6 + jupyter docker 만들기 

## http://igraph.org/python/

## not just igraph, python-igraph
## https://packages.ubuntu.com/xenial/python3-cairo
## https://cairocffi.readthedocs.io/en/latest/

## pillow, jupyter, matplotlib, numpy, pandas, scipy, sklearn, igraph, cairocffi

### docker run -it --name python-jup -p 18888:8888 python-jup:0.1 /bin/bash

### docker run -it --name python-jup -p 18888:8888 -v [/datapath]:/docker python-jup:0.1 /bin/bash


# python + Theano
## * 환경 설정 에러 
## 	- jupyter 와 theano함께있는 이미지 찾기 힘들다.
## 	- pip version 1.0.2로 엄청나게 낮다
## 	- python module six 실행안된다
## 	- Theano 버전이 이상하게 꼬인듯하다.
## 	- /root/.theanorc를 고쳐야한다.
## 		- https://github.com/Theano/Theano/issues/5943
## 		- https://github.com/Theano/Theano/issues/5463#issuecomment-280625719
## 	- 결국, 모든환경 처리할 수 있는 dockerfile 완성
## - 튜토리얼 다 읽고 Theano 익히기 2017/05/25~
## 	- https://en.wikipedia.org/wiki/Automatic_differentiation
## 	- https://github.com/lamblin/ccw_tutorial/blob/master/Scan_W2016/scan_tutorial.ipynb
## 
## * 딥러닝 패키지 비교
## https://en.wikipedia.org/wiki/Comparison_of_deep_learning_software
## https://tensorflow.blog/2015/11/18/%ED%85%90%EC%84%9C%ED%94%8C%EB%A1%9C%EC%9A%B0-vs-%ED%85%8C%EC%95%84%EB%85%B8theano-vs-%ED%86%A0%EC%B9%98torch/
## 
## * 도커 빌드 파일
## https://hub.docker.com/r/kaixhin/cuda-theano/
## 	Ubuntu Core 14.04 + CUDA 7.0 + cuDNN v4 + Theano
## 	nvidia-docker run -it kaixhin/cuda-theano

### docker build -t sspark-theano-jup:1.0 .
### nvidia-docker run -it --name sspark-theano2 -v /home/sspark/workspace/python/deeplearning_pj:/docker -p 18888:8888 sspark-theano-jup:1.0 /bin/bash
### 
### docker build -t sspark-theano-jup:8.0 .

