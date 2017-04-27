#!/bin/bash
ID=17
TOKEN=BAhJIiUzZjM2YzY2YmNhMWJmNTlhZWRjMDE1NGM0M2I1NDk3ZAY6BkVG--4bb6da88f729217cbe0a5faf0b174c5c212b8c72
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/items/$ID"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
