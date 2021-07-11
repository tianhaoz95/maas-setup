#!/bin/bash

SUBTASK_SCRIPT_DIR="$PROJECT_ROOT/scripts/tasks/subtasks"

echo "::group::Install Basic Dependencies"
source "$SUBTASK_SCRIPT_DIR/install_basic_deps.sh"
echo "::endgroup::"

echo "::group::Install Nvidia driver"
"$CI" && echo "Install Nvidia driver in CI container will not work. Skip."
! "$CI" && source "$SUBTASK_SCRIPT_DIR/install_nvidia_driver.sh"
echo "::endgroup::"

echo "::group::Install Docker"
"$CI" && echo "Install Docker in CI container will not work. Skip."
! "$CI" && source "$SUBTASK_SCRIPT_DIR/install_docker.sh"
echo "::endgroup::"

echo "::group::Install Nvidia Docker"
"$CI" && echo "Install Nvidia Docker in CI container will not work. Skip."
! "$CI" && source "$SUBTASK_SCRIPT_DIR/install_nvidia_docker.sh"
echo "::endgroup::"

echo "::group::Install xfce4"
"$CI" && echo "Install desktop in CI container will not work. Skip."
! "$CI" && source "$SUBTASK_SCRIPT_DIR/install_xfce.sh"
echo "::endgroup::"

echo "::group::Install CRD"
source "$SUBTASK_SCRIPT_DIR/install_crd.sh"
echo "::endgroup::"

echo "::group::Install Android Studio"
"$CI" && echo "Install Android Studio in CI container will not work. Skip."
! "$CI" && source "$SUBTASK_SCRIPT_DIR/install_android_studio.sh"
echo "::endgroup::"
