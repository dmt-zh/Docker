FROM ubuntu:20.04

RUN apt-get update && apt-get install -y vim curl

WORKDIR /home/dmt/docker_learn/custom_ubuntu

RUN touch hello.sh && echo "echo 'Hello from container!'" > hello.sh

CMD ["hello.sh"]

# COPY ./home/dmt/Documents/bash_for_loop.sh ./src/bash_for_loop.sh
