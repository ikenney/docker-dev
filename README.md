Docker development environment
==============================

clone the repo and build the base dev machine 


    git clone --recursive https://github.com/ikenney/docker-dev.git
    cd docker-dev

copy your public key into /dotfiles/.ssh (something like)

    # cp /c/Users/myname/.ssh/id_rsa dotfiles/.ssh
    docker build -t ikenney/base .

for rails:

    docker build -t ikenney/rails rails

for node:

    docker build -t ikenney/node node
   
for rails and node

    docker build -t ikenney/full full

