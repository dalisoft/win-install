# Install Chocolatey
Write-Output "Installing chocolatey..."
$testchoco = powershell choco -v
if (-not($testchoco)) {
	Write-Output "Seems Chocolatey is not installed, installing now"
	Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}
else {
	Write-Output "Chocolatey Version $testchoco is already installed"
}

# First disable prompt
Write-Output "Disabling prompt for every installation..."
choco feature enable -n=allowGlobalConfirmation

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
choco install rclone ripgrep rsync
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
winget install --silent Nvidia.Broadcast

##########################
####### GUI / Apps #######
##########################
# Unavailable apps are commented

Write-Output "Installing apps..."
winget install --silent 1password
winget install --silent adguard
winget install --silent adguardvpn
# choco install affinity-designer addinity-photo
winget install altair-graphql.altair
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
winget install --silent figma
## choco install firefox
choco install firacode jetbrainsmono
## choco install framer
## choco install ungoogled-chromium
choco install potplayer madvr mediainfo
winget install --silent iMazing
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
winget install --silent RustemMussabekov.Raindrop
## choco install rpi-imager
winget install --silent Readdle.Spark
# choco install redisinsight
## choco install slack spotify
choco install tableplus telegram
## choco install teamviewer
choco install vscode-insiders
## choco install vscode vmware-workstation-player
## choco install webstorm zerotier-one zoom
choco install wiztree ventoy linkshellextension


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
fnm install 16.18.0
fnm use system
fnm default system

Write-Output "Done!"
