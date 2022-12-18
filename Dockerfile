FROM ubuntu:20.04

RUN apt-get update && apt-get install -y vim curl

WORKDIR /home/dmt/docker_learn/custom_ubuntu

COPY ./bash_for_loop.sh ./bash_for_loop.sh

RUN touch hello.sh && echo "echo 'Hello from container!'" > hello.sh

ENTRYPOINT ["bash"]

CMD ["hello.sh"]
