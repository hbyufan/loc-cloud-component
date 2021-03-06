# /bin/bash

set -eo pipefail

modules=( eureka-server config-server admin-server )

for module in "${modules[@]}"; do
    docker build -t "loc-cloud-component/${module}:latest" ${module}
done


###  docker build -t "loc-cloud-component/eureka-server:latest" eureka-server

###  docker build -t "loc-cloud-component/config-server:latest" config-server

###  docker build -t "loc-cloud-component/admin-server:latest" admin-server

