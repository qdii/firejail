# Firejail profile for arm
# Description: Terminal status monitor for Tor relays
# This file is overwritten after every install/update
# Persistent local customizations
include arm.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.arm

# Allow python (blacklisted by disable-interpreters.inc)
include allow-python2.inc
include allow-python3.inc

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-programs.inc

mkdir ${HOME}/.arm
whitelist ${HOME}/.arm
include whitelist-common.inc

caps.drop all
ipc-namespace
netfilter
no3d
nodvd
nogroups
noinput
nonewprivs
noroot
nosound
notpm
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
tracelog

disable-mnt
private-bin arm,bash,ldconfig,lsof,ps,python*,sh,tor
private-dev
private-etc @tls-ca,tor
private-tmp

restrict-namespaces
