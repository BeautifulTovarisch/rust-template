#!/bin/bash

set -euo pipefail

groupadd --g ${GID} rust
useradd -u ${UID} -g ${GID} -ms /bin/bash rust

chown -R ${UID}:${GID} /workdir
chown -R ${UID}:${GID} /usr/local/cargo

su-exec ${UID}:${GID} "$@"
