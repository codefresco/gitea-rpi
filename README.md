# gitea-rpi
One and done script to install gitea on arm debian based linux (raspberry pi)

Gitea is a github/gitlab/bitbucket type service that is open source and can be self-hosted. It supports larg files (self hosted git lfs for unity), package repositories for npm, pip, helm repo, etc.

## How to install
Run the `gitea-rip-arm64.sh` script using sudo. It downloads and sets up gitea to run as a service. After that open `<address>:3000` in a browser on the same network and complete the installation.
Ie. if install on a raspberry pi with default hostname of `raspberrypi.local`, navigating to `raspberrypi.local:3000` opens the page.

> :warning: **This script does not set up ssl**: Be careful, no ssl set up here. See [HTTPS ssetup](https://docs.gitea.com/administration/https-setup) or use other ways to set it up (ie. Nginx)

## Docker alternative
This is good for running on a half-baked potato but for a better machine like almost anything else there are docker images here: https://hub.docker.com/r/gitea/gitea
