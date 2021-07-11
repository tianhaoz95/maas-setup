#!/bin/bash

SUBTASK_SCRIPT_DIR="$PROJECT_ROOT/scripts/tasks/subtasks"

echo "::group::Install Basic Dependencies"
source "$SUBTASK_SCRIPT_DIR/install_basic_deps.sh"
echo "::endgroup::"

echo "::group::Install xfce4"
"$CI" && echo "Install desktop in CI container will not work. Skip."
! "$CI" && source "$SUBTASK_SCRIPT_DIR/install_xfce.sh"
echo "::endgroup::"

echo "::group::Install CRD"
source "$SUBTASK_SCRIPT_DIR/install_crd.sh"
echo "::endgroup::"
