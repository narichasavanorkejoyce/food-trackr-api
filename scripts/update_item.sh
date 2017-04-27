ID=18
TOKEN=BAhJIiU1NjI1ODYxMjViMWU1OTdkOWVjODIxODM0MjFjODU3MgY6BkVG--f83e2dcdc671fa7ac28216424396dc6c9560b2a0
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/items/$ID"
curl "${API}${URL_PATH}" \
 --include \
 --request PATCH \
 --header "Content-Type: application/json" \
 --header "Authorization: Token token=$TOKEN" \
 --data '{
   "item": {
     "quantity": "false"
   }
 }'

echo
