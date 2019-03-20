#!/bin/bash
# Install conda for all users (/usr/local)
wget https://repo.anaconda.com/archive/Anaconda2-5.1.0-Linux-x86_64.sh
chmod u+x ./Anaconda2-5.1.0-Linux-x86_64.sh
./Anaconda2-5.1.0-Linux-x86_64.sh -b -p /usr/local/lib/anaconda2
echo "export PATH=${HOME}/anaconda2/bin:$PATH" >> ${HOME}/.bashrc
echo "source ${HOME}/anaconda2/etc/profile.d/conda.sh" >> ${HOME}/.bashrc
echo "unset PYTHONPATH" >> ${HOME}/.bashrc
