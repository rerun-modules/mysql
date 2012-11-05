#!/usr/bin/env roundup
#
# This file contains the test plan for the start command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m mysql -p start
#

# Helpers
# ------------

rerun() {
    command $RERUN -M $RERUN_MODULES "$@"
}

# The Plan
# --------

describe "start"

it_runs_without_arguments() {
    if /sbin/chkconfig mysqld
    then
      rerun mysql:stop
      rerun mysql:start
      rerun mysql:start
      rerun mysql:stop
    fi
}
