#!/bin/bash
# Start jupyter notebook
jupyter notebook --port=8888 --ip=0.0.0.0 --no-browser --NotebookApp.token=`cat /etc/JARVICE/random128.txt | cut -c 1-64`
