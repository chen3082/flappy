#!/usr/bin/env python3.5
FROM ubuntu:16.04

RUN apt-get update && apt-get install \
  -y --no-install-recommends python3 python3-virtualenv

RUN python3 -m virtualenv --python=/usr/bin/python3 /opt/venv

RUN apt-get install -y nginx git python3-setuptools python3-dev
RUN apt-get install python3-pip -y
RUN pip3 install --upgrade pip
RUN python3.5 -m pip install virtualenv

RUN apt install libcurl4-openssl-dev libssl-dev -y
#RUN apt-get install python-apt -y
RUN apt-get -y install cmake
RUN python3.5 -m pip install enum34
RUN apt install libopenmpi-dev -y
RUN python3.5 -m pip install baselines future Click==7.0  Keras-Applications==1.0.8 \
Keras-Preprocessing==1.1.0 \
PyOpenGL==3.1.0 \
PyQt5==5.13.1 \
PyQt5-sip==4.19.19 \
grpcio==1.24.0 \
gym==0.14.0 \
#h5py==2.10.0 \
#html5lib==0.999 \
#httplib2==0.9.1 \
#idna==2.0 \
#joblib==0.13.2 \
#kiwisolver==1.1.0 \
matplotlib==3.0.3 \
numpy==1.17.2 \
#oauthlib==1.0.3 \
#opencv-python==4.1.1.26 \
#opt-einsum==3.1.0 \
#padme==1.1.1 \
pandas==0.24.2 \
#pexpect==4.0.1 \
#plainbox==0.25 \
#protobuf==3.9.2 \
#ptyprocess==0.5 \
#pyasn1==0.1.9 \
#pycurl==7.43.0 \
#pyglet==1.3.2 \
#pygobject==3.27.0 \
#pyparsing==2.0.3 \
#python-dateutil==2.8.0 \
#python-systemd==0.0.9 \
#pytz==2019.2 \
#pyxdg==0.25 \
#reportlab==3.3.0 \
#requests==2.9.1 \
scipy==1.3.1 \
setuptools==39.1.0 \
#six==1.10.0 \
stable-baselines==2.8.0 \
tensorboard==1.9.0 \
tensorflow==1.9.0 \
tensorflow-estimator==2.0.0 \
termcolor==1.1.0 \
urllib3==1.13.1 \
wheel==0.29.0 \
wrapt==1.11.2

RUN . /opt/venv/bin/activate && apt update
RUN . /opt/venv/bin/activate && apt-get update
RUN . /opt/venv/bin/activate && alias python='python3.5'
RUN . /opt/venv/bin/activate && apt-get remove libdart*
RUN . /opt/venv/bin/activate && python3.5 -m pip install pystrich
#RUN apt-get install git-core
RUN . /opt/venv/bin/activate && apt-get install software-properties-common -y
RUN . /opt/venv/bin/activate && add-apt-repository ppa:git-core/ppa -y
RUN . /opt/venv/bin/activate && apt-get update
RUN . /opt/venv/bin/activate && apt-get install git -y
RUN . /opt/venv/bin/activate && apt-get install build-essential cmake pkg-config git -y
RUN . /opt/venv/bin/activate && apt-get update && apt-get install python3-dev zlib1g-dev
RUN . /opt/venv/bin/activate && apt-get install libeigen3-dev libassimp-dev libccd-dev libfcl-dev libboost-regex-dev libboost-system-dev -y
RUN . /opt/venv/bin/activate && apt-get install libopenscenegraph-dev -y
RUN . /opt/venv/bin/activate && apt-get install libnlopt-dev -y
RUN . /opt/venv/bin/activate && apt-get install coinor-libipopt-dev -y
RUN . /opt/venv/bin/activate && apt-get install libbullet-dev -y
RUN . /opt/venv/bin/activate && apt-get install libode-dev -y
RUN . /opt/venv/bin/activate && apt-get install liboctomap-dev -y
RUN . /opt/venv/bin/activate && apt-get install libflann-dev -y
RUN . /opt/venv/bin/activate && apt-get install libtinyxml2-dev -y
RUN . /opt/venv/bin/activate && apt-get install liburdfdom-dev -y
RUN . /opt/venv/bin/activate && apt-get install libxi-dev libxmu-dev freeglut3-dev -y
RUN . /opt/venv/bin/activate && apt-get install libopenscenegraph-dev -y
RUN . /opt/venv/bin/activate && git clone git://github.com/dartsim/dart.git
RUN . /opt/venv/bin/activate && cd dart && git checkout tags/v6.2.1 && mkdir build && cd build && cmake .. && make -j4 && make install
#COPY ./install_dependencies.bash/ tmp/
#RUN . /opt/venv/bin/activate && chmod +x tmp/install_dependencies.bash
#RUN bash tmp/install_dependencies.bash
#ADD test.py /s
RUN echo 2
RUN python3.5 -m pip install colorama
RUN git clone git://github.com/chen3082/flappy.git
#ENV PATH "/bin:/usr/bin:/usr/local/bin:"
#ENV LD_LIBRARY_PATH "LD_LIBRARY_PATH:/lib:/usr/lib:/usr/local/lib:"
#RUN echo $LD_LIBRARY_PATH
RUN /sbin/ldconfig -v
RUN cd flappy && cd flappy && cd envs && cd fwmav && ls
#RUN cd usr && cd lib && ls
#RUN cd usr && cd local && cd lib && ls
#COPY . /var/flappy
ENV PYTHONPATH "${PYTHONPATH}:/flappy/flappy/envs/fwmav:/flappy/Wing.egg-info"
COPY /flappy .
COPY . .
WORKDIR /flappy

#COPY myapp.py .
CMD ["python3", "test.py", "--model_type=PID"]
#RUN export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/lib:/usr/lib:/usr/local/lib
#CMD ["python3.5", "./test.py", "--model_type=PID"]
