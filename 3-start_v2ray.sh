docker run -d \
--name v2ray \
--restart always \
-v $PWD/v2ray:/etc/v2ray \
-p 12000:11002 \
v2ray/official  \
v2ray -config=/etc/v2ray/config.json \