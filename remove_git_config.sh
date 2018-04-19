#! bin/bash

truncate -s 0 ~/.gitconfig

LOCAL_CONFIG=$(find /home/ -regex '.*[/]nomeDoProjeto[/].git[/]config' -print -quit)

sed -i '/\[user\]/d' $LOCAL_CONFIG
sed -i '/[ \t]name.*/d' $LOCAL_CONFIG
sed -i '/[ \t]email.*/d' $LOCAL_CONFIG
