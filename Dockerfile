FROM ruby:3.2.2
ENV USER=email-talk
RUN useradd -ms /bin/bash $USER
USER "${USER}"
