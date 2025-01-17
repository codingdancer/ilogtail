#!/usr/bin/env bash

# Copyright 2021 iLogtail Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -ue
set -o pipefail

if uname -s | grep Linux; then
  echo -e "HOST_OS=Linux\nUSERNAME=$USER\nUSER_UID=$(id -u $USER)\nGROUPNAME=$(id -gn $USER)\nGROUP_GID=$(id -g $USER)" > .devcontainer/.env;
else
  echo "HOST_OS=Darwin\nUSERNAME=$USER\nUSER_UID=$(id -u $USER)\nGROUPNAME=root\nGROUP_GID=0" > .devcontainer/.env;  
fi
