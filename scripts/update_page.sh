#!/bin/bash
# this script is invoked from post-update git-hook via SSH

# this is taken from env variable set in /etc/profild.d/webpage.sh
REPO_DIR=${WEBPAGE_PATH}

sudo git -C ${REPO_DIR} pull
sudo chown nginx:nginx ${REPO_DIR}/frontend -R