#!/usr/bin/env roundup
#
# This file contains the test plan for the restart command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m mysql -p restart
#

# Helpers
# ------------

rerun() {
    command $RERUN -M $RERUN_MODULES "$@"
}

# The Plan
# --------

describe "restart"

it_restarts_when_mysqld_is_running() {
    if /sbin/chkconfig mysqld
    then
      rerun mysql:start
      rerun mysql:restart
      rerun mysql:stop
    fi
}

it_restarts_when_mysqld_is_stopped() {
    if /sbin/chkconfig mysqld
    then
      rerun mysql:stop
      rerun mysql:restart
    fi
}
