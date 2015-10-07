FROM ruby:2.2

RUN apt-get update && apt-get install -y --no-install-recommends locales
RUN echo "en_GB.UTF-8 UTF-8" >> /etc/locale.gen  &&  locale-gen 
ENV LANG en_GB.UTF-8
ENV LANGUAGE en_GB:en
ENV LC_ALL en_GB.UTF-8
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y --no-install-recommends vim tmux git zsh curl nodejs mysql-client postgresql-client sqlite3
RUN gem install rails
RUN git config --global user.name "lostsock" && git config --global user.email "git@lostsock.co.uk"

COPY dotfiles /root
RUN git clone --recursive https://github.com/ikenney/vim-bundles.git /root/.vim/bundle

VOLUME /usr/src
WORKDIR /usr//src

EXPOSE 3000
CMD [ "/bin/zsh" ]
