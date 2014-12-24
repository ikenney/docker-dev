FROM ubuntu:14.04

RUN locale-gen en_GB.UTF-8 
ENV LANG en_GB.UTF-8
ENV LANGUAGE en_GB:en
ENV LC_ALL en_GB.UTF-8
RUN apt-get install vim -y
RUN apt-get install tmux -y
RUN apt-get install git -y
RUN git clone https://github.com/ikenney/dotmatrix-fork.git ~/dotmatrix; cd ~/dotmatrix ; bin/install
