#!/bin/bash

#curl "http://localhost:3000/sign-up" \
curl --include --request POST http://localhost:4741/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "yellow@gmail.com",
      "password": "test",
      "password_confirmation": "test"
    }
  }'

# data output from curl doesn't have a trailing newline
echo
