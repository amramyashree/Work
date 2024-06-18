#!/bin/sh
set -e

. /etc/atlantis/atlantis.var

atlantis server \
--atlantis-url="$URL" \
--gh-user="$USERNAME" \
--gh-token="$TOKEN" \
--gh-webhook-secret="$SECRET" \
--repo-allowlist="$REPO_ALLOWLIST" \
--repo-config="$REPO_CONFIG" \
--parallel-pool-size=1 \
--enable-diff-markdown-format
