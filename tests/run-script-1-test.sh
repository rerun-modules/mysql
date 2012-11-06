#!/usr/bin/env roundup
#
# This file contains the test plan for the run-script command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m mysql -p run-script
#

# The Plan
# --------

describe "run-script"

it_fails_without_arguments() {
    if ! rerun mysql:run-script
    then
      exit 0
    fi
}

it_connects_without_password_and_selects_user() {
    rerun mysql:start

    SCRIPT=$(mktemp)
    echo "select user();" > $SCRIPT

    rerun mysql:run-script -s $SCRIPT

    rm -f $SCRIPT

    rerun mysql:stop
}
