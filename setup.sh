#!/bin/bash

export PROJECT_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

source $PROJECT_ROOT/scripts/utils/helpers.sh

source $PROJECT_ROOT/scripts/tasks/main.sh
