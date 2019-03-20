#!/bin/bash
# Create conda test environment for all users
export PATH=/usr/local/lib/anaconda2/bin:$PATH
conda create --name jupyter-env python=2.7 numpy=1.14.5
