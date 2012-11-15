#!/usr/bin/env roundup
#
# This file contains the test plan for the erase command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m mysql -p erase
#

# The Plan
# --------

describe "erase"


# ------------------------------
# Replace this test. 
it_works_without_arguments() {
    rerun mysql:erase
}
# ------------------------------

