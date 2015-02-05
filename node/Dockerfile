FROM ikenney/base

WORKDIR /home/dev
ENV PROFILE=/home/dev/.zshrc NVM_DIR=/home/dev/.nvm
USER dev
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.23.3/install.sh | bash 
#RUN ~/.nvm/nvm.sh && nvm install stable
RUN /bin/zsh -c ". ~/.nvm/nvm.sh && mkdir ~/src && cd ~/src && nvm install stable"
CMD [ "/bin/zsh" ]
