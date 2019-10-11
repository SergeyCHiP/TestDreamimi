#!/usr/bin/env bash

# найдем директорию, в которой лежит файл исполняемого срипта
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# перейдем в нее
cd "$DIR"

# Устанавливаем ruby зависимости.
bundle install