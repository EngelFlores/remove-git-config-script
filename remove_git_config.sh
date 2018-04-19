#! bin/bash

rm -f ~/.gitconfig && touch ~/.gitconfig
LOCAL_CONFIG=$(find /home/ -regex '.*[/]nomeDoProjeto[/].git[/]config' -print -quit)
