#!/bin/bash

SUBTASK_SCRIPT_DIR="$PROJECT_ROOT/scripts/tasks/subtasks"

bash "$SUBTASK_SCRIPT_DIR/install_basic_deps.sh"
bash "$SUBTASK_SCRIPT_DIR/install_crd.sh"
