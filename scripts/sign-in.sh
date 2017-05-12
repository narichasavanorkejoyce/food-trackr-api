#!/bin/bash

# EMAIL=lm0101 PASSWORD=test scripts/sign-in-json.sh

API="${API_ORIGIN:-https://food-trackr.herokuapp.com}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "baduser@gmail.com",
      "password": "test"
    }
  }'

# data output from curl doesn't have a trailing newline
echo
