#!/bin/bash

#curl "http://localhost:3000/sign-up" \
curl --include --request POST https://food-trackr.herokuapp.com/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "chacha@gmail.com",
      "password": "test",
      "password_confirmation": "test"
    }
  }'

# data output from curl doesn't have a trailing newline
echo
