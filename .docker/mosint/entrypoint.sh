#!/bin/sh

for plugin in "HUNTER" "EMAILREP" "INTELX" "PSBDMP" "BREACHDIRECTORY"
do
    if eval ! [[ -z "\$${plugin}" ]]
    then
        echo "⚡  Configuring ${plugin} ..."
        eval "mosint set $(echo ${plugin} | tr '[:upper:]' '[:lower:]') \$${plugin} > /dev/null 2>&1"
    fi
done

tail -f /dev/null
