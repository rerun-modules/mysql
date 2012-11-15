#!/usr/bin/env roundup
#
# This file contains the test plan for the remove command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m mysql -p remove
#

# The Plan
# --------

describe "remove"


it_works_without_arguments() {
    rerun mysql:remove
}

it_works_with_cleanup() {
    rerun mysql:remove --cleanup true
}
