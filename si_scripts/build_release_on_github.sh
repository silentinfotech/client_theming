#!/bin/bash
cd ..
git pull origin griddrive
docker run -v "$PWD:/home/user/" nextcloud-client-win32:v1 /home/user/win/build.sh $(id -u)
VER=`git rev-parse --short=6 HEAD`
export GITHUB_TOKEN=5e2bcd99bafb41b12695c82fe4630f641a4aba53
github-release delete --user silentinfotech --repo client_theming --tag griddrive
github-release release --user silentinfotech --repo client_theming --tag griddrive --name "Grid Drive client for windows." --description "Windows Build" --pre-release
github-release upload --user silentinfotech --repo client_theming --tag griddrive --name "client-win32-${VER}.zip" --file build-win32/Nextcloud-2.3.2.1-setup.exe
