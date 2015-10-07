FROM ruby 2.2

RUN apt-get update && apt-get install -y --no-install-recommends locales
RUN locale-gen en_GB.UTF-8 
ENV LANG en_GB.UTF-8
ENV LANGUAGE en_GB:en
ENV LC_ALL en_GB.UTF-8
ENV DEBIAN_FRONTEND noninteractive
EMV $HOME /root
RUN apt-get install -y --no-install-recommends \
  vim \
  tmux \
  git \
  zsh \
  curl \
  nodejs \
  mysql-client \
  postgresql-client \
  sqlite3

RUN git config --global user.name "lostsock" && git config --global user.email "git@lostsock.co.uk"

COPY dotfiles $HOME
RUN git clone --recursive https://github.com/ikenney/vim-bundles.git $HOME/.vim/bundle

RUN mkdir $HOME/src
VOLUME $HOME/src
WORKDIR $HOME/src

EXPOSE 3000
CMD [ "/bin/zsh" ]
