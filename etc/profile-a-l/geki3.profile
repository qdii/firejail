# Firejail profile for geki3
# Persistent local customizations
include geki3.local
# Persistent global definitions
include globals.local

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-programs.inc
include disable-shell.inc
include disable-xdg.inc

whitelist /usr/share/games/geki3
include whitelist-run-common.inc
include whitelist-runuser-common.inc
include whitelist-usr-share-common.inc
include whitelist-var-common.inc

apparmor
caps.drop all
ipc-namespace
net none
netfilter
nodvd
noinput
nonewprivs
noroot
notpm
notv
nou2f
novideo
protocol unix
seccomp
tracelog

disable-mnt
private
private-bin geki3
private-dev
private-etc @games,@sound,@x11
private-tmp
writable-var # game scores are stored under /var/games

dbus-user none
dbus-system none

memory-deny-write-execute
restrict-namespaces
