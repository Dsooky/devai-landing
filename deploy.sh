#!/usr/bin/env bash
# Deploy to Vercel. First run opens a browser to sign in.
set -euo pipefail
cd "$(dirname "$0")"
npx --yes vercel@latest login
npx --yes vercel@latest --prod
