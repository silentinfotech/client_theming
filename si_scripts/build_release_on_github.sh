\#!/bin/bash
cd ..
git pull origin griddrive_win
docker run -v "$PWD:/home/user/" nextcloud-client-win32:v1 /home/user/win/build.sh $(id -u)
VER=`git rev-parse --short=6 HEAD`
export GITHUB_TOKEN=bc9f436af481b65ce2c716f0db87a39337e86e95
github-release delete --user silentinfotech --repo client_theming --tag griddrive
github-release release --user silentinfotech --repo client_theming --tag griddrive --name "Grid Drive client for windows." --description "Windows Build" --pre-release
github-release upload --user silentinfotech --repo client_theming --tag griddrive --name "Griddrive-setup-win32-${VER}.exe" --file build-win32/Griddrive-2.3.2.1-setup.exe
