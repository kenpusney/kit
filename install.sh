#!/usr/bin/env bash

get_konf(){ 
    echo "Get current developing version ..." && curl https://raw.github.com/kenpusney/konfigurations/master/konfig > konfig
    echo "Success!"
}

inst_konf(){
    [ -f ./konfig ] || get_konf
    [ -d /usr/lib/kit ] || mkdir /usr/lib/kit &&  cp konfig /usr/lib/kit
    if [ -e /usr/bin/konfig ]
    then
        echo "Remove old version ..."
        rm -rf /usr/bin/konfig
    fi
    echo "Creat executable command ..." && ln -s /usr/lib/kit/konfig /usr/bin/konfig
    echo "Success!"
}

[ $# -gt 0 ] && case $1 in
    "uninstall" | "un" )
        rm -rf /usr/bin/konfig && rm -rf /usr/lib/kit 
        echo "Uninstall successfully!" && exit ;;
    "dev" ) 
        get_konf && inst_konf && exit ;;
    * )
        echo "Unknown command."
        exit 1;;
esac

inst_konf
