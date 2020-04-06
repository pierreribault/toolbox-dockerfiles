# 🛠 Toolbox - Dockerfiles 🐳

This repository contains my startup images that meets **my personal needs** for my projects. All images present here are updated on Dockerhub at least one time each day.For example, if I push an update on any Dockerfile, all related images will be re-build and push. Moreover, each day between **1:00 am** and **2:00 am**, a cronjob start to re-build each image and push.  

Each time I alter an image, my GitHub Action run Hadolint on the Dockerfile. The column **Hadolint --ignore** signify than I voluntarily ignore some good practices to produce my images.

#### What is Hadolint ?
> A smarter Dockerfile linter that helps you build best practice Docker images. <br>
> The linter is parsing the Dockerfile into an AST and performs rules on top of the AST. <br>
> It is standing on the shoulders of ShellCheck to lint the Bash code inside RUN instructions.
>
> -- _source: [Hadolint](https://github.com/hadolint/hadolint)_

## 🌎 Global specification 

All my images are based on [Bitnami](https://github.com/bitnami)'s work, so huge thanks to them ❤️

#### Environments configuration for each image 
Key| Value
--- | ---
LANG | `fr_FR.UTF-8`
LANGUAGE | `fr_FR:fr`
LC_ALL | `fr_FR.UTF-8`

## 📚 Images list

|Image | Tags | Github Action | Hadolint --ignore|
|:-----------: | :-------------: | :-------------: | :-------------:|
|[pierreribault/php-fpm](https://hub.docker.com/repository/docker/pierreribault/php-fpm) | `7.3 ~ latest`<br> `7.3-mongodb`|![](https://github.com/pierreribault/toolbox-dockerfiles/workflows/PHP-FPM%207.3/badge.svg)| [DL3008](https://github.com/hadolint/hadolint/wiki/DL3008)|
| - | `7.4` <br> `7.4-mongodb`|![](https://github.com/pierreribault/toolbox-dockerfiles/workflows/PHP-FPM%207.4/badge.svg)| [DL3008](https://github.com/hadolint/hadolint/wiki/DL3008)|
|[pierreribault/nginx](https://hub.docker.com/repository/docker/pierreribault/nginx) | `1.16 ~ latest`|![](https://github.com/pierreribault/toolbox-dockerfiles/workflows/Nginx%201.16/badge.svg)| [DL3008](https://github.com/hadolint/hadolint/wiki/DL3008)|
|[pierreribault/nginx_php-fpm](https://hub.docker.com/repository/docker/pierreribault/nginx_php-fpm) | `1.16-7.3 ~ latest` <br> `1.16-7.3-mongodb`|![](https://github.com/pierreribault/toolbox-dockerfiles/workflows/Nginx%201.16%20+%20FPM%207.3/badge.svg)| [DL3008](https://github.com/hadolint/hadolint/wiki/DL3008) [DL3027](https://github.com/hadolint/hadolint/wiki/DL3027) [SC2046](https://github.com/hadolint/hadolint/wiki/SC2046)|
| - | `1.16-7.4` <br> `1.16-7.4-mongodb`|![](https://github.com/pierreribault/toolbox-dockerfiles/workflows/Nginx%201.16%20+%20FPM%207.4/badge.svg)| [DL3008](https://github.com/hadolint/hadolint/wiki/DL3008) [DL3027](https://github.com/hadolint/hadolint/wiki/DL3027) [SC2046](https://github.com/hadolint/hadolint/wiki/SC2046)|

## 🚨 Disclaimer

As I said at the beginning, these images are build to **my personal needs** and I wanted to try the power of GitHub Action.

I can't afford to keep every image running smoothly and that why there are automatically updated because I have great confidence in **Bitnami**'s images. Please! If you seriously want to use them don't hesitate to PR or fork the repository 🚀
