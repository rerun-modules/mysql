#!/usr/bin/env roundup
#
# This file contains the test plan for the status command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m mysql -p status
#

# Helpers
# ------------

rerun() {
    command $RERUN -M $RERUN_MODULES "$@"
}

# The Plan
# --------

describe "status"

it_works_whether_mysql_is_up_or_down() {
    if /bin/chkconfig mysqld
    then
      rerun mysql:start
      rerun mysql:status

      rerun mysql:stop

      if ! rerun mysql:status
      then
        exit 0
      fi
    fi
}
