ID=99
TOKEN=BAhJIiUyMmI5YzIyN2IwMDI2ODAzNDllYjczYWQxZGE3MzNjYQY6BkVG--0ee77799ea335a716c215373bf50f085781b2e17
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
