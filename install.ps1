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

Write-Output "Installing packages..."
choco install firacode starship bat ripgrep           # Terminal essentials
choco install nano neovim                             # Terminal editors
choco install git git-lfs git-cola delta              # Git
choco install rsync rclone                            # Sync and Clone
choco install curl wget                               # Fetching
choco install openssh libressl gnupg gpg4win unzip    # Utilities
choco install ffmpeg ghostscript                      # Addinitional utilities
choco install nodejs python3 php                      # Languages essentials
choco install rust cmake golang deno                  # Languages essentials #2
choco install fnm yarn composer                       # Package managers
choco install gradle llvm                             # Additions to PL
choco install heroku-cli                              # Terminal additions
choco install linkshellextension                      # Essential utilities
choco install watchman                                # Dependencies
choco install pyqt5 heroku-cli                        # Additional tools

Write-Output "Installing apps..."
choco install 7zip                               # Essential desktop tools
choco install miniconda3 rust-analyzer           # Additional PL tools
choco install obs vlc                            # Media
choco install qbittorrent                        # Download tools
choco install anydesk                            # Management
choco install office365business notion           # Productivity
choco install microsoft-edge firefox             # Browsers
choco install 1password telegram slack           # GUI Essential Apps
choco install octave datagrip                    # Development tools
choco install postman altair-graphql             # HTTP / GraphQL clients
choco install sublimetext3 vscode                # Editors
choco install androidstudio                      # IDE
choco install docker-desktop                     # Hyper
choco install openjdk11 cyberduck                # Additional tools
# choco install steam                            # Gaming stores
choco install nextdns                            # VPNgot fixed
choco install samsung-nvme-driver samsung-magician # Samsung Drivers / Tools (last should be installed manually)

Write-Output "Installing npm packages..."
npm i -g node-gyp http-server npm-check-updates typesync nodemon flamebearer 0x cordova bs-platform esy

Write-Output "Done!"
