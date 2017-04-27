#!/bin/bash

#ID=10 EMAIL=lm0202 OLDPW=test2 NEWPW=test20 TOKEN=BAhJIiVmNGI0MmYzMzI2ZDNkZTYwNzUyZjRlMTc1MTgwNDNjZgY6BkVG--ad08134f2e8675073669099ef333a87f47e0613c scripts/change-password.sh
  API="${API_ORIGIN:-http://localhost:4741}"
  URL_PATH="/change-password/10"
  curl --include --request PATCH "${API}${URL_PATH}" \
    --header "Authorization: Token token=token" \
    --header "Content-Type: application/json" \
    --data '{
      "passwords": {
        "old": "test20",
        "new": "test21"
      }
    }'

# data output from curl doesn't have a trailing newline
echo
