#!/bin/bash
ID=116
TOKEN=BAhJIiVkMTBmMTFlOGYwMmZiOWY3ODU2MmJiMGQyMjA3OTg5ZgY6BkVG--98a9f78dd973567fe1604fd4e3a86ff3282879dc
API="${API_ORIGIN:-https://food-trackr.herokuapp.com}"
URL_PATH="/items/$ID"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
