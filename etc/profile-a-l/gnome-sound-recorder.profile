# Firejail profile for gnome-sound-recorder
# Description: simple sound recordings for GNOME
# This file is overwritten after every install/update
# Persistent local customizations
include gnome-sound-recorder.local
# Persistent global definitions
include globals.local

noblacklist ${MUSIC}
noblacklist ${HOME}/.local/share/Trash

# Allow gjs (blacklisted by disable-interpreters.inc)
include allow-gjs.inc

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

caps.drop all
net none
nodvd
nogroups
noinput
nonewprivs
noroot
notpm
notv
nou2f
novideo
protocol unix
seccomp
seccomp.block-secondary
tracelog

disable-mnt
private-cache
private-dev
private-etc @games,@x11
private-tmp

restrict-namespaces
