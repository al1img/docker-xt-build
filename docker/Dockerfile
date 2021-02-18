FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y install vim curl bison
RUN apt-get -y install locales
RUN apt-get -y install python python3
RUN apt-get -y install git repo
RUN apt-get -y install binutils
RUN apt-get -y install gcc g++ pigz bzip2 bzr chrpath cpio diffstat gawk make texinfo wget
RUN apt-get -y install python-git python-github
RUN apt-get -y install python3-distutils
RUN curl https://storage.googleapis.com/git-repo-downloads/repo-1 > /usr/bin/repo
RUN chmod a+x /usr/bin/repo 

RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen

RUN useradd -m build

USER build

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

CMD /bin/bash
