#!/bin/bash
TOKEN=BAhJIiU0MTA1NGJmY2FhMmFhOWIyNGE3MzU3YTFkYmQ4M2I2MgY6BkVG--57bd27084beb3fee3186b8d60b6759e9981b535c
API="${API_ORIGIN:-https://food-trackr.herokuapp.com}"
URL_PATH="/items?quantity=true"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
