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

it_runs_without_arguments() {
    if chkconfig mysqld
    then
      rerun mysql:stop
    fi
}
