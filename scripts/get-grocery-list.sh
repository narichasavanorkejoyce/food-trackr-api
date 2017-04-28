#!/bin/bash
TOKEN=BAhJIiU5ZTc2NDRmMmZjMDcyNjRlYmMxYjUxZWY5YjA0NjBmMgY6BkVG--138e4708f137bb8cb6bb6e151d61758ff8cd5385
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/items?quantity=false"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
