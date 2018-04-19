#! bin/bash

rm -f ~/.gitconfig && touch ~/.gitconfig

LOCAL_CONFIG=$(find /home/ -regex '.*[/]nomeDoProjeto[/].git[/]config' -print -quit)

sed -i '/\[user\]/d' $LOCAL_CONFIG
sed -i '[ \t]name.*' $LOCAL_CONFIG
sed -i '[ \t]email.*' $LOCAL_CONFIG
