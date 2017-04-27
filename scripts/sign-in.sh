#!/bin/bash

# EMAIL=lm0101 PASSWORD=test scripts/sign-in-json.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "lm0101",
      "password": "test"
    }
  }'

# data output from curl doesn't have a trailing newline
echo
