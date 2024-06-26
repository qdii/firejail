# Firejail profile for nheko
# Description: Desktop IM client for the Matrix protocol
# This file is overwritten after every install/update
# Persistent local customizations
include nheko.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/nheko
noblacklist ${HOME}/.config/nheko
noblacklist ${HOME}/.local/share/nheko

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-programs.inc
include disable-shell.inc
include disable-xdg.inc

mkdir ${HOME}/.cache/nheko
mkdir ${HOME}/.config/nheko
mkdir ${HOME}/.local/share/nheko
whitelist ${HOME}/.cache/nheko
whitelist ${HOME}/.config/nheko
whitelist ${HOME}/.local/share/nheko
whitelist ${DOWNLOADS}
include whitelist-common.inc
include whitelist-runuser-common.inc
include whitelist-usr-share-common.inc
include whitelist-var-common.inc

apparmor
caps.drop all
netfilter
nodvd
nogroups
noinput
nonewprivs
noroot
notpm
notv
protocol unix,inet,inet6
seccomp
tracelog

disable-mnt
private-bin nheko
private-cache
private-dev
private-etc @tls-ca,@x11,host.conf,mime.types
private-tmp

dbus-user filter
dbus-user.talk org.freedesktop.secrets
?ALLOW_TRAY: dbus-user.talk org.kde.StatusNotifierWatcher
# Add the next line to your nheko.local to enable notification support.
#dbus-user.talk org.freedesktop.Notifications
dbus-system none

restrict-namespaces
