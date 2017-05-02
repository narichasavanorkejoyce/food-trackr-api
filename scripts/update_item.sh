ID=86
TOKEN=BAhJIiViYjFkZjVlOTNiMGRkZTdkZDE2MjU5MzU1YTkwZmQ1ZgY6BkVG--9c3b65bc3bc581eb4302061192454e1391b81438
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
