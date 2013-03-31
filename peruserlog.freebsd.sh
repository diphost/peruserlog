#!/bin/sh

# PROVIDE: peruserlog
# REQUIRE: NETWORKING
# BEFORE: LOGIN

#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
# Copyright (C) 2004 Sam Hocevar <sam@hocevar.net>
#
# Everyone is permitted to copy and distribute verbatim or modified
# copies of this license document, and changing it is allowed as long
# as the name is changed.
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.

. /etc/rc.subr

name=peruserlog
rcvar=`set_rcvar`

pidfile=/var/run/peruserlog.pid
command_interpreter="/usr/local/bin/perl"
procname="/usr/local/bin/peruserlog"

command="/usr/sbin/daemon"
command_args=" -f -p ${pidfile} ${procname}"

load_rc_config $name

: ${peruserlog_enable="YES"}
run_rc_command "$1"
