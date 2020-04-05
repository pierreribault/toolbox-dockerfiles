# 🛠 Toolbox - Dockerfiles 🐳

This directory contains my basic images that meets **my personal needs** for my projects. All images present here are updated on Dockerhub at least one time each day. For example, if I push an update on any Dockerfile, all related images will be re-build and push. Moreover, each day at 1:00 am GMT+1, a cronjob start to re-build each image and push.  

## 🌎 Global specification 

All my images are based on [Bitnami](https://github.com/bitnami)'s work, so huge thanks to them ❤️

#### Environments configuration for each image 
Key| Value
--- | ---
LANG | `fr_FR.UTF-8`
LANGUAGE | `fr_FR:fr`
LC_ALL | `fr_FR.UTF-8`

## 📚 Images list

Image | Tags | Github Action | Hadolint --ignore
:-----------: | :-------------: | :-------------: | :-------------:
[pierreribault/php-fpm](https://hub.docker.com/repository/docker/pierreribault/php-fpm) | `7.3` / `latest`<br> `7.3-mongodb`|![](https://github.com/pierreribault/toolbox-dockerfiles/workflows/PHP-FPM%207.3/badge.svg)| [DL3008](https://github.com/hadolint/hadolint/wiki/DL3008)
- | `7.4` <br> `7.4-mongodb`|![](https://github.com/pierreribault/toolbox-dockerfiles/workflows/PHP-FPM%207.4/badge.svg)| [DL3008](https://github.com/hadolint/hadolint/wiki/DL3008)
[pierreribault/nginx](https://hub.docker.com/repository/docker/pierreribault/nginx) | `1.16` / `latest`|![](https://github.com/pierreribault/toolbox-dockerfiles/workflows/Nginx%201.16/badge.svg)| [DL3008](https://github.com/hadolint/hadolint/wiki/DL3008)

