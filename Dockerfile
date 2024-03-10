FROM ubuntu:22.04

RUN apt update
RUN apt install -y sudo

# 一般ユーザの追加，sudo権限の付与，パスワード不要
ARG REMOTE_USERNAME
RUN useradd -ms /bin/bash $REMOTE_USERNAME
RUN usermod -aG sudo $REMOTE_USERNAME
RUN echo $REMOTE_USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$REMOTE_USERNAME

RUN apt install -y build-essential \
    git \
    vim

USER $REMOTE_USERNAME
ENV USER=$REMOTE_USERNAME
WORKDIR /home/$USER

ARG PS1
RUN echo "PS1='$PS1'" >> ~/.bashrc

CMD [ "tail", "-f", "/dev/null" ]
