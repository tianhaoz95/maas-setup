#!/bin/bash

export PROJECT_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "Execute setup script from $PROJECT_ROOT"

source $PROJECT_ROOT/scripts/utils/helpers.sh

bash $PROJECT_ROOT/scripts/tasks/main.sh
