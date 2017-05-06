ID=102
TOKEN=BAhJIiUzMjhiOTBkN2E1Y2RjMjAzYjMzMjY1YTgzNTNmYmI0NQY6BkVG--638359e8e0d5c913bec817dd29f7029de3e9e7de
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
