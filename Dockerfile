FROM sjackman/linuxbrew-standalone

# TODO: Query @sjackman about following lines - they shouldn't be
# nessecary - is linuxbrew-standalone the wrong thing to target?
USER root
RUN mkdir /.cache && chown -R linuxbrew:linuxbrew /.cache && apt-get install unzip

USER linuxbrew

RUN brew tap platform-brew/tap && brew install platform-brew
