#!/bin/bash

set -eo pipefail

echo -e "\033[33m
______           _      ______               _ _      _   _____                          _      _
| ___ \         | |     | ___ \             | | |    | | |  ___|                        | |    | |
| |_/ / __ _ ___| |__   | |_/ /_ _ _ __ __ _| | | ___| | | |____  ____ _ _ __ ___  _ __ | | ___| |
| ___ \/ _\` / __| '_ \  |  __/ _\` | '__/ _\` | | |/ _ \ | |  __\ \/ / _\` | '_ \` _ \| '_ \| |/ _ \ |
| |_/ / (_| \__ \ | | | | | | (_| | | | (_| | | |  __/ | | |___>  < (_| | | | | | | |_) | |  __/_|
\____/ \__,_|___/_| |_| \_|  \__,_|_|  \__,_|_|_|\___|_| \____/_/\_\__,_|_| |_| |_| .__/|_|\___(_)
                                                                                  | |
                                                                                  |_|\033[0m"
echo -e "Yay! It all worked! 👍\n"

echo "BUILDKITE_PARALLEL_JOB: $BUILDKITE_PARALLEL_JOB"
echo "BUILDKITE_PARALLEL_JOB_COUNT: $BUILDKITE_PARALLEL_JOB_COUNT"

if [ "$BUILDKITE_PARALLEL_JOB" = "0" ]; then
    echo "chunk 1 of 5: https://tinyurl.com/"
elif [ "$BUILDKITE_PARALLEL_JOB" = "1" ]; then
    echo "chunk 2 of 5: 3v"
elif [ "$BUILDKITE_PARALLEL_JOB" = "2" ]; then
    echo "chunk 3 of 5: 3h"
elif [ "$BUILDKITE_PARALLEL_JOB" = "3" ]; then
    echo "chunk 4 of 5: k8"
elif [ "$BUILDKITE_PARALLEL_JOB" = "4" ]; then
    echo "chunk 5 of 5: yn"
fi
