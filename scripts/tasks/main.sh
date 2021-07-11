#!/bin/bash

SUBTASK_SCRIPT_DIR="$PROJECT_ROOT/scripts/tasks/subtasks"

source "$SUBTASK_SCRIPT_DIR/install_basic_deps.sh"
! "$CI" && source "$SUBTASK_SCRIPT_DIR/install_xfce.sh"
source "$SUBTASK_SCRIPT_DIR/install_crd.sh"
