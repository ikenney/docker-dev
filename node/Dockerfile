FROM ikenney/base

WORK_DIR /home/dev
ENV HOME=/home/dev PROFILE=/home/dev/.zshrc
USER dev
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.23.3/install.sh | bash && . ~/.nvm/nvm.sh && nvm install stable && echo "source ~/.nvm/nvm.sh" >> home/dev/.zshrc

CMD [ "/bin/zsh" ]
