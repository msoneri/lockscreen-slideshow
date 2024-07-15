#!/bin/bash

t=1

sudo chown root:root script.sh
sudo cp script.sh /root/script.sh
# add root cron job
(sudo crontab -l; echo "*/$t * * * * /bin/bash /root/script.sh") | sudo crontab -

if sudo crontab -l | grep -q "/root/script.sh"; then
    echo "success. $(sudo crontab -l)"
else
    echo "failed for some reason"
fi
