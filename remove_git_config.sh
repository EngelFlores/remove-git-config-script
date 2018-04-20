#! bin/bash

truncate -s 0 ~/.gitconfig
LOCAL_CONFIG=$(find /Users/ghidorsi -regex '.*[/]nomeDoProjeto[/].git[/]config' -print -quit)
sed -Ei '/(user|name.*|email.*)/d' $LOCAL_CONFIG
