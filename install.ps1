choco install choco-cleaner

##########################
####### CLI Tools #######
##########################
# Unavailable tools are commented
## Not used apps are double-commented

Write-Output "Installing packages..."
# choco install ansible
# choco install giflib jpeg libpng
choco install aria2 bat
# choco install bfg bitwise pkg-config cairo
# choco find cassowary certbot
choco install cmake openssh
# choco install cocoapods
choco install composer curl deno
# choco install dprint exa
choco install exiftool fd
# choco install unbound fdupes fish
choco install ffmpeg fnm git git-cola
# choco install git-filter-repo
choco install git-lfs gnupg
# choco install glib htop iperf
choco install go imagemagick iperf3
# choco install pango librsvg mas mosh
choco install llvm mkcert nano
# choco install neofetch octave openblas
choco install neovim openjdk11
choco install nodejs php python3
# choco install pinentry pipx pixman
choco install qemu postgresql14
# choco install podman qt pyqt
choco install rclone ripgrep rsync fastcopy
choco install rust rust-analyzer
choco install smartmontools speedtest starship
# choco install tmux tmuxinator
choco install unzip watchman
# choco install websocat wrk heroku
choco install wget yarn
choco install yt-dlp mongodb

##########################
######## Drivers #########
####### and tools ########
##########################
choco install nvidia-display-driver
choco install geforce-experience
choco install cuda
choco install mac-precision-touchpad
winget install --silent Nvidia.Broadcast --accept-package-agreements --accept-source-agreements
winget install --silent Paragon.APFS --accept-package-agreements --accept-source-agreements

# The bug is here and it may not work until the issue
# https://github.com/microsoft/winget-cli/issues/1585
# is fixed
# winget install --silent 'HEIF Image Extensions' --accept-package-agreements --accept-source-agreements
# winget install --silent --source msstore 'HEVC Video Extensions from Device Manufacturer' --accept-package-agreements --accept-source-agreements
# winget install --silent --source msstore 'AV1 Video Extension' --accept-package-agreements --accept-source-agreements
# winget install --silent 'VP9 Video Extensions'  --accept-package-agreements --accept-source-agreements

##########################
####### GUI / Apps #######
##########################
# Unavailable apps are commented
## Not used apps are double-commented

Write-Output "Installing apps..."
winget install --silent 1password --accept-package-agreements --accept-source-agreements
winget install --silent adguard --accept-package-agreements --accept-source-agreements
winget install --silent adguardvpn --accept-package-agreements --accept-source-agreements
# choco install affinity-designer addinity-photo
winget install --silent altair-graphql.altair --accept-package-agreements --accept-source-agreements
# choco install altserver
choco install androidstudio
## choco install anydesk
# choco install app-cleaner arctype
## choco install arq
# choco install arq-cloud-backup
choco install rufus
choco install beekeeper-studio
# choco install browserstacklocal
choco install cyberduck datagrip docker-desktop
# choco install fedora-media-writer
winget install --silent figma --accept-package-agreements --accept-source-agreements
## choco install firefox
choco install firacode jetbrainsmono
## choco install framer
## choco install ungoogled-chromium
choco install potplayer madvr mediainfo
winget install --silent iMazing --accept-package-agreements --accept-source-agreements
choco install sharex obs-studio
## winget install --silent Krisp
# choco install FanControl
choco install office365business
## choco install microsoft-teams
choco install miniforge3
# choco install miro
choco install ngrok notion
# choco install outline-manager
# choco install postgres-server-gui
choco install heidisql postman
# choco install proxyman
## choco install pycharm
choco install qbittorrent
winget install --silent RustemMussabekov.Raindrop --accept-package-agreements --accept-source-agreements
## choco install rpi-imager
winget install --silent Readdle.Spark --accept-package-agreements --accept-source-agreements
# choco install redisinsight
## choco install slack spotify
choco install tableplus telegram
## choco install teamviewer
choco install vscode-insiders
## choco install vscode vmware-workstation-player
## choco install webstorm zerotier-one zoom
choco install wiztree ventoy linkshellextension
choco install wsl-ubuntu-2204

# Misc utilities
choco install vnc-viewer twinkle-tray


##########################
###### npm packages ######
##########################

Write-Output "Installing npm packages..."
npm i -g 0x cordova esy flamebearer http-server node-gyp nodemon npm-check-updates typesync

##########################
###### pip packages ######
##########################

Write-Output "Installing pip packages..."
python3 -m pip install --upgrade pip
  python3 -m pip install virtualenv jupyterlab notebook labelme labelImg


##########################
###### fnm version #######
##########################

Write-Output "Installing fnm versions..."
fnm install 16.18.1
fnm install 18.12.1
fnm use system
fnm default system

Write-Output "Done!"