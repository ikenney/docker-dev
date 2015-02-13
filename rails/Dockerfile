FROM ikenney/base

USER dev
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3 && \curl -sSL https://raw.githubusercontent.com/wayneeseguin/rvm/master/binscripts/rvm-installer | bash -s stable --rails

CMD [ "/bin/zsh" ]
