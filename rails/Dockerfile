FROM ikenney/base

RUN useradd -ms /bin/zsh dev
ENV HOME /home/dev
RUN echo "dev ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/dev_user && chmod 0440 /etc/sudoers.d/dev_user

USER dev
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3 && \curl -sSL https://raw.githubusercontent.com/wayneeseguin/rvm/master/binscripts/rvm-installer | bash -s stable --rails
ADD dotfiles /home/dev/

CMD [ "/bin/zsh" ]
