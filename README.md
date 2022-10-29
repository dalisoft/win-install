# win-config-shell

<p align='center'>A "PS shell" script which configures machine on Windows</p>

## Note

> This configuration was made for remote employee who work always from home and has it's secure home for it. No one touches to my machine

**I do not guarantee nor support for your any damage & data loss, do & run it at your own risk**

Looking similar for macOS? Look at [here](https://github.com/dalisoft/mac-config-shell)

## Pre-installation

- Login into "MS Store" and download any app
- Installed chocolatey
- Admin access

## Installation

```shell
# go-to your desired downloads folder
git clone https://github.com/dalisoft/win-install.git
cd win-install
```

> Run PowerShell as admin right

```ps
Set-ExecutionPolicy Bypass -Scope Process -Force; ./init.ps1
```

```shell
Set-ExecutionPolicy Bypass -Scope Process -Force; ./install.ps1
```

## License

Apache-2.0 License
