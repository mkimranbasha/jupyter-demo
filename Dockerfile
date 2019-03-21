FROM nimbix/ubuntu-desktop:xenial
RUN apt-get update && apt-get install -y python3-pip sudo
# Setup environment for jupyter notebook
RUN pip3 install jupyter
COPY AppDef.json /etc/NAE/AppDef.json
ADD run-jupyter.sh /usr/local/bin/run-jupyter.sh
RUN chmod 755 /usr/local/bin/run-jupyter.sh
