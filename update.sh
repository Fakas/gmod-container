#!/bin/bash

echo "Updating Garry's Mod..."
/home/steam/steamcmd/steamcmd.sh +login anonymous \
        +force_install_dir /home/steam/gmodds \
        +app_update 4020 validate \
        +quit

#if [[ -z "${DEPLOY_LABEL}" ]]; then
#    echo "Updating CFG..."
#    rm -rf /home/steam/gmodds/garrysmod/cfg
#    git clone "https://github.com/Fakas/$DEPLOY_LABEL_cfg.git" /home/steam/gmodds/garrysmod/cfg --branch master
#    echo "Done updating!"
#fi
