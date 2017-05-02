#!/bin/bash
TOKEN=BAhJIiUxOWE0OTNjNzZhMDc3Nzc1NzY1OTRmYzU3MzhkNTJjNAY6BkVG--de2ddc03c8b3d468c7b15c4bd70faaf045672ac5
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/items?quantity=true"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
