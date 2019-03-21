#!/bin/bash
# Start jupyter notebook
# Create 64 bit token from JARVICE NAE (/etc/JARVICE/random128.txt)
jupyter notebook --port=8888 --ip=0.0.0.0 --no-browser --NotebookApp.token=`cat /etc/JARVICE/random128.txt | cut -c 1-64`
