#!/bin/bash
TOKEN=BAhJIiU1YjdiNGI3MGM1YWE3OGFlODU3MzM5YWJlMzY2NWEyOQY6BkVG--e97171485aff42ae3467f0dfd83ff44ffdf87ab2
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/items?quantity=false"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
