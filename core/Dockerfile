FROM sjackman/linuxbrew-core

USER root

# platform-brew needs Python, but linuxbrew's Python doesn't work
# (cannot write to /Library).

RUN apt-get install -y python
RUN apt-get install -y git
RUN apt-get install -y unzip
RUN apt-get install -y libncurses5-dev
RUN apt-get install -y zlib1g-dev

USER linuxbrew

RUN brew update && brew tap platform-brew/tap && brew install platform-brew
