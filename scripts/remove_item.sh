#!/bin/bash
ID=81
TOKEN=BAhJIiUxOWE0OTNjNzZhMDc3Nzc1NzY1OTRmYzU3MzhkNTJjNAY6BkVG--de2ddc03c8b3d468c7b15c4bd70faaf045672ac5
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/items/$ID"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
