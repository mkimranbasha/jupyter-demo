FROM ubuntu:xenial
COPY AppDef.json /etc/NAE/AppDef.json
RUN apt-get update && apt-get install -y wget build-essential
# Setup environment for jupyter notebook
ADD setup-anaconda.sh /usr/local/bin/setup-anaconda.sh
ADD create-jupyter.sh /usr/local/bin/create-jupyter.sh
ADD run-jupyter.sh /usr/local/bin/run-jupyter.sh
RUN chmod -R 755 /usr/local/bin
RUN /usr/local/bin/setup-anaconda.sh
RUN /usr/local/bin/create-jupyter.sh
