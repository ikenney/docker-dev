FROM ubuntu:14.04

RUN locale-gen en_GB.UTF-8 
ENV LANG en_GB.UTF-8
ENV LANGUAGE en_GB:en
ENV LC_ALL en_GB.UTF-8
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update 
RUN apt-get install vim -y
RUN apt-get install tmux -y
RUN apt-get install git -y
RUN git config --global user.name "lostsock" && git config --global user.email "git@lostsock.co.uk"
RUN apt-get install zsh -y
RUN apt-get install curl -y

RUN useradd -ms /bin/zsh dev
ENV HOME /home/dev
RUN echo "dev ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/dev_user && chmod 0440 /etc/sudoers.d/dev_user
USER dev
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3 && \curl -sSL https://raw.githubusercontent.com/wayneeseguin/rvm/master/binscripts/rvm-installer | bash -s stable --rails
ADD dotfiles /home/dev/

CMD [ "/bin/zsh" ]
