# Bash script to update golang for linux environment

## Check latest version and change version in update.sh

```bash
VERSION=1.18 #change to latest version
```

## Run script using sudo

```bash
sudo ./update.sh
```

## add Go Environment

Add to `~/.bashrc`

```bash
export GOROOT=/usr/local/go
export GOPATH=$HOME/projects/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$HOME/projects/go/bin
```

add to `~/.profile`

```bash
if [ -d "/usr/local/go/bin" ] ; then
    PATH=$PATH:/usr/local/go/bin
fi
```

## Reload .bashrc

```bash
. ~/.bashrc
```

## Check go version

```bash
go version
# Output
go version go1.18 linux/amd64
```
