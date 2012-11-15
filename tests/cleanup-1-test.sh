#!/usr/bin/env roundup
#
# This file contains the test plan for the cleanup command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m mysql -p cleanup
#

# The Plan
# --------

describe "cleanup"


# ------------------------------
# Replace this test. 
it_works_without_arguments() {
    rerun mysql:cleanup
}
# ------------------------------

