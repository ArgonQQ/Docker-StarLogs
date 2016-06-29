# Ubuntu Starlogs
#
#
# Pull base image.
FROM node:latest

# Install.
RUN \
  apt-get update && \
  apt-get install -y \
            curl \
            git \
            ruby &&\
  rm -rf /var/lib/apt/lists/* && \
  git clone git://github.com/artemave/StarLogs.git


RUN \
  cd /StarLogs/ && \
  npm install -g \
            node-static \
            pogo && \
  gem install sass

COPY start.sh /StarLogs/start.sh

#Permissions
RUN chmod 755 /StarLogs/start.sh

# Set environment variables.
#ENV HOME /StarLogs/

# Define working directory.
WORKDIR /StarLogs/

# Define default command.
ENTRYPOINT
CMD ["/StarLogs/start.sh"]
