FROM ubuntu:18.04

ENV TZ=Europe/Kiev
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8
ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update
RUN apt-get -y install locales locales-all
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && locale-gen
RUN apt-get -y install tzdata
RUN apt-get -y install vim curl bison
RUN apt-get -y install python python3
RUN apt-get -y install git
RUN apt-get -y install binutils
RUN apt-get -y install gcc-5 g++-5 gcc g++ pigz bzip2 bzr chrpath cpio diffstat gawk make texinfo wget
RUN apt-get -y install python-git python-github python-configparser python3-distutils
RUN apt-get -y install ostree squashfs-tools
RUN curl https://storage.googleapis.com/git-repo-downloads/repo-1 > /usr/bin/repo
RUN chmod a+x /usr/bin/repo

# RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && locale-gen
# RUN RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN useradd -m build

USER build

CMD /bin/bash
