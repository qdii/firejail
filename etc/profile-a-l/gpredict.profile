# Firejail profile for gpredict
# Description: Satellite tracking program
# This file is overwritten after every install/update
# Persistent local customizations
include gpredict.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/Gpredict

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-programs.inc
include disable-shell.inc

mkdir ${HOME}/.config/Gpredict
whitelist ${HOME}/.config/Gpredict
include whitelist-common.inc

caps.drop all
netfilter
nodvd
nogroups
noinput
nonewprivs
noroot
nosound
notpm
notv
nou2f
protocol unix,inet,inet6
seccomp
tracelog

private-bin gpredict
private-dev
private-etc @tls-ca
private-tmp

restrict-namespaces
