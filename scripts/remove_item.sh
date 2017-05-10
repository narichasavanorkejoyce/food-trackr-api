#!/bin/bash
ID=104
TOKEN=BAhJIiUzMjFmYzMyYTcyMWFmM2ZhM2NkNTVkY2NjNzA2OGE2YQY6BkVG--064692889cef8e3aad3be5beed252d4c7417dcd9
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/items/$ID"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
