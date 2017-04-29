ID=33
TOKEN=BAhJIiUxNmRhOWZhOThjYjhkMzY1ZTYzNGRkYTRhOWQ1ZDk1ZAY6BkVG--436f5f7e9b6f23d088a57f9ef0c3ff6cebb294b6
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
