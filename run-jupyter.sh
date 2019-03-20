#!/bin/bash
export PATH=/usr/local/lib/anaconda2/bin:$PATH
conda activate jupyter-env 
pip install --user jupyter
# Start jupyter notebook
jupyter notebook --port=8888 --ip=0.0.0.0 --no-browser --certfile=/etc/JARVICE/cert.pem --NotebookApp.token=`cat /etc/JARVICE/random128.txt`
