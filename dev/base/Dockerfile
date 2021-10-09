FROM ubuntu:focal

ENV TZ=Europe/London
ENV NOTVISIBLE "in users profile"

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    && apt-get update && apt-get upgrade -y && apt-get install -y \
    software-properties-common build-essential apt-utils git libpq-dev openssh-server gdb gdbserver rsync cmake vim valgrind fish ltrace strace \
    && add-apt-repository ppa:ubuntu-toolchain-r/test \
    && add-apt-repository universe \
#    && wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null \
#    && apt-add-repository 'deb https://apt.kitware.com/ubuntu/ focal main' \
#    && apt update && apt-get install -y cmake gcc-11 g++-11 libfmt-dev manpages-dev \
    && apt update && apt-get install -y cmake gcc-10 g++-10 libfmt-dev manpages-dev \
    libboost-dev libboost-all-dev manpages-dev stl-manual libloki-dev libspdlog-dev \
    && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 110 \
    && update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-10 110 \
#     && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 110 \
#    && update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 110 \
    && mkdir /var/run/sshd \
    && echo 'root:root' | chpasswd \
    && sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
    # SSH login fix. Otherwise user is kicked off after login
    && sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd \
    && echo "export VISIBLE=now" >> /etc/profile \
    # 22 for ssh server. 7777 for gdb server.
    && useradd -ms /bin/bash debugger \
    && echo 'debugger:pwd' | chpasswd

ADD . /code
WORKDIR /code
EXPOSE 22 7777
CMD ["/usr/sbin/sshd", "-D"]
