FROM ikenney/node
WORKDIR /home/dev
ENV HOME=/home/dev PROFILE=/home/dev/.zshrc
USER dev

RUN mkdir ~/src && cd ~/src && npm install angular karma karma-jasmine  --save-dev

CMD [ "/bin/zsh" ]
