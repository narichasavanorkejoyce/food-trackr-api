#!/bin/bash
TOKEN=BAhJIiUyNzYxNTk1NmMwMDNlYzEzNDJkMmFhYzViMjJlMjhjNwY6BkVG--c33eb8124f7acec50612153db66e11a5311f6936
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/items?quantity=true"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
