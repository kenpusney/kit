#!/usr/bin/env bash

get_kit(){ 
    echo "Get current dev version ..." && curl https://raw.github.com/kenpusney/kit/master/kit > kit
    echo "Success!"
}

inst_kit(){
    [ -f ./kit ] || get_kit
    [ -d /usr/lib/kit ] || mkdir /usr/lib/kit &&  cp kit /usr/lib/kit
    if [ -e /usr/bin/kit ]
    then
        echo "Remove old version ..."
        rm -rf /usr/bin/kit
    fi
    echo "Creat executable command ..." && ln -s /usr/lib/kit/kit /usr/bin/kit
    echo "Success!"
}

[ $# -gt 0 ] && case $1 in
    "uninstall" | "un" )
        rm -rf /usr/bin/kit && rm -rf /usr/lib/kit && rm -rf ~/.kit
        echo "Uninstall successfully!" && exit ;;
    "dev" ) 
        get_kit && inst_kit && exit ;;
    * )
        echo "Unknown command."
        exit 1;;
esac

inst_kit
