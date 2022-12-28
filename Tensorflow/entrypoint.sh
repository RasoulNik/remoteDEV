#!/bin/bash
# start ssh server in background
systemctl enable ssh &
/usr/sbin/sshd -D &
service ssh restart &
# Set the Jupyter Lab password to "dev"
#jupyter notebook password dev
# Start Jupyter Lab
jupyter lab --ip=0.0.0.0 --port=8888 --allow-root
#echo "c.NotebookApp.password = u'sha1:6a3f528eec40:6e896b6e4828f525a6e20e5411cd1c8075d68619'" > /root/.jupyter/jupyter_notebook_config.py
#
## Start Jupyter Lab
#jupyter lab --ip=0.0.0.0 --allow-root --no-browser --port=8888
