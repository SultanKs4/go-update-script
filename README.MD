# Bash script to update golang for linux environment

Tested X86_64 and ARM64 Architecture

## Check latest version and change version in update.sh

```bash
VERSION=1.18.3 #change to latest version
```

## Run script using sudo

```bash
sudo ./update.sh
```

## add go bin to PATH environtment (first time)

tested for `bash` if you use another shell e.g `zsh` maybe add change in `.zprofile` or `.zshrc`

add to `~/.profile` (or `/etc/profile` for system wide installation)

```bash
if [ -d "/usr/local/go/bin" ] ; then
    PATH=$PATH:/usr/local/go/bin
fi
```

## Reload profile

```bash
# e.g
. ~/.profile
```

## Check go version

```bash
go version
# Output e.g
go version go1.18 linux/amd64
```
