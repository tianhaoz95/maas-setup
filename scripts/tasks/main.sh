#!/bin/bash

SUBTASK_SCRIPT_DIR="$PROJECT_ROOT/scripts/tasks/subtasks"

echo "::group::Install Basic Dependencies"
source "$SUBTASK_SCRIPT_DIR/install_basic_deps.sh"
echo "::endgroup::"

echo "::group::Disable sleep"
! "$CI" && source "$SUBTASK_SCRIPT_DIR/disable_sleep.sh"
echo "::endgroup::"

echo "::group::Install Nvidia driver"
! "$CI" && source "$SUBTASK_SCRIPT_DIR/install_nvidia_driver.sh"
echo "::endgroup::"

echo "::group::Install Docker"
! "$CI" && source "$SUBTASK_SCRIPT_DIR/install_docker.sh"
echo "::endgroup::"

echo "::group::Install Nvidia Docker"
! "$CI" && source "$SUBTASK_SCRIPT_DIR/install_nvidia_docker.sh"
echo "::endgroup::"

echo "::group::Install xfce4"
! "$CI" && source "$SUBTASK_SCRIPT_DIR/install_xfce.sh"
echo "::endgroup::"

echo "::group::Install CRD"
source "$SUBTASK_SCRIPT_DIR/install_crd.sh"
echo "::endgroup::"

echo "::group::Install CRD"
source "$SUBTASK_SCRIPT_DIR/install_teamviewer.sh"
echo "::endgroup::"

echo "::group::Install Android Studio"
! "$CI" && source "$SUBTASK_SCRIPT_DIR/install_android_studio.sh"
echo "::endgroup::"

echo "::group::Configure KVM"
! "$CI" && source "$SUBTASK_SCRIPT_DIR/configure_kvm.sh"
echo "::endgroup::"
