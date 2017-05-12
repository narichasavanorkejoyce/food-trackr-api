#!/bin/bash
TOKEN=BAhJIiUwYjE3Yjk1MWJhYzc0NGNmZmQzMWFiN2E2ZjE0YzU1YwY6BkVG--bcaaff62b25aa1e7516d580e2f16e45edc2feb07
API="${API_ORIGIN:-https://food-trackr.herokuapp.com}"
URL_PATH="/items?quantity=true"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
