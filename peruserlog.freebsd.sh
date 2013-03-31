#!/bin/sh

# PROVIDE: peruserlog
# REQUIRE: NETWORKING
# BEFORE: LOGIN

. /etc/rc.subr

name=peruserlog
rcvar=`set_rcvar`

pidfile=/var/run/peruserlog.pid
command_interpreter="/usr/local/bin/perl"
procname="/root/server/peruserlog"

command="/usr/sbin/daemon"
command_args=" -f -p ${pidfile} /root/server/peruserlog"

load_rc_config $name

: ${peruserlog_enable="YES"}
run_rc_command "$1"
