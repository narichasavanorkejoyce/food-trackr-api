#!/bin/bash

# ID=9 TOKEN=BAhJIiUwMzFlOGQ2YzBjY2Q1Mzc3ODUyMWJmNTk3M2JhZDllNwY6BkVG--0645648640be90a047107c16585147440f7e169e scripts/sign-out.sh
# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/sign-out/$ID"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request DELETE \
#   --header "Authorization: Token token=$TOKEN"
#
# # data output from curl doesn't have a trailing newline
# echo


API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-out/ID"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=token"
