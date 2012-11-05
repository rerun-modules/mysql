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

it_runs_without_arguments() {
    if chkconfig mysqld
    then
      rerun mysql:restart
      rerun mysql:stop
    fi
}
