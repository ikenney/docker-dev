FROM ubuntu:14.04

RUN locale-gen en_GB.UTF-8 
ENV LANG en_GB.UTF-8
ENV LANGUAGE en_GB:en
ENV LC_ALL en_GB.UTF-8
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install vim -y
RUN apt-get install tmux -y
RUN apt-get install git -y
RUN apt-get install zsh -y
COPY dotfiles/* /root/

CMD [ "/bin/zsh" ]
