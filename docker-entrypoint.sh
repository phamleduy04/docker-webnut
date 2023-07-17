#!/usr/bin/env bash
cd /app/webNUT/webnut
echo "from .webnut import NUTServer" > config.py
echo "servers = [" >> config.py

for ((i=1; ; i+=1)); do
    host_var="HOST_$i"
    port_var="PORT_$i"
    user_var="USER_$i"
    pass_var="PASS_$i"

    # Check if the environment variables exist
    if [[ -z "${!host_var}" || -z "${!port_var}" || -z "${!user_var}" || -z "${!pass_var}" ]]; then
        break
    fi

    # Append the values to config.py
    echo "NUTServer('${!host_var}', ${!port_var}, '${!user_var}', '${!pass_var}')," >> config.py

    echo "Loaded host $i"
done
echo "]" >> config.py

cd .. && python setup.py install

exec pserve production.ini