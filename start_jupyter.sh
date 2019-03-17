#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd ${SCRIPT_DIR}/nbs/dl1
nohup jupyter notebook >> /var/log/jupyter_notebook.log &
