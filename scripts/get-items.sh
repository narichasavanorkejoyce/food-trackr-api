#!/bin/bash
TOKEN=BAhJIiU1NjI1ODYxMjViMWU1OTdkOWVjODIxODM0MjFjODU3MgY6BkVG--f83e2dcdc671fa7ac28216424396dc6c9560b2a0
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/items"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
