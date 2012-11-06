#!/usr/bin/env roundup
#
# This file contains the test plan for the stop command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m mysql -p stop
#

# Helpers
# ------------

rerun() {
    command $RERUN -M $RERUN_MODULES "$@"
}

# The Plan
# --------

describe "stop"

it_stops_when_mysql_is_started() {
    if /sbin/chkconfig mysqld
    then
      rerun mysql:start
      rerun mysql:stop
    fi
}

it_stops_when_mysql_is_stopped() {
    if /sbin/chkconfig mysqld
    then
      rerun mysql:stop
      rerun mysql:stop
    fi
}
