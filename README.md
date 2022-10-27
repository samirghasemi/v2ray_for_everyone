# v2ray_for_everyone

This repository explains how to setup ```v2ray``` for a vps.

1. First, you need to install ```docker```. In order to install it, refet to ```2-install_docker.sh``` and run this through the following command.

```sh 2-install_docker.sh```

2. In the second step, you need to install ```Caddy```. You can install it through the following command.

```sh 1-install_caddy.sh```

3. After that, you need to start the container by using the command below.

```sh 3-start_v2ray.sh```

After making changes to ```Caddyfile``` you need to restart caddy. Run the following command to restart it.

```systemctl restart caddy```