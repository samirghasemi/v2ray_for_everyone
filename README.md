# v2ray_for_everyone

This repository explains how to setup ```v2ray``` for a vps.

0. pull this repository in your vps

```git clone https://github.com/samirghasemi/v2ray_for_everyone.git && cd v2ray_for_everyone```

1. First, you need to install ```docker```. In order to install it, refet to ```2-install_docker.sh``` and run this through the following command.

```sudo sh 2-install_docker.sh```

2. In the second step, you need to install ```Caddy```. You can install it through the following command.

```sudo sh 1-install_caddy.sh```

3. Before starting container, you should config your v2ray client using this file: v2ray/config.json
generate uuid using [Uuid generator](https://www.uuidgenerator.net/). and replace "YOUR_UUID" in your ./v2ray/config.json 
you can change your websocket path and replace "YOUR_PATH" with anything you want

4. After that, you need to start the container by using the command below.

```sh 3-start_v2ray.sh```

5. now you should edit your Caddyfile in /etc/caddy/Caddyfile and add this to below of file:

```
http://YOUR_DOMAIN {
  reverse_proxy /YOUR_PATH 127.0.0.1:12000
}
```

After making changes to ```Caddyfile``` you need to restart caddy and wait for one minute. Run the following command to restart it.

```systemctl restart caddy```

6- now you should go to your cdn providor (i suggest arvancloud!) and add YOUR_DOMAIN to cdn providor. you should enable pass data over cdn. 
