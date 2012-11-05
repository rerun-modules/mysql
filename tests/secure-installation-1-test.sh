#!/usr/bin/env roundup
#
# This file contains the test plan for the secure-installation command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m mysql -p secure-installation
#

# Helpers
# ------------

rerun() {
    command $RERUN -M $RERUN_MODULES "$@"
}

# The Plan
# --------

describe "secure-installation"

it_runs_without_arguments() {
    #rerun mysql:secure-installation
    :
}
