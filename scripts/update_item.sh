ID=103
TOKEN=BAhJIiU0MmE1ZWYyMTQwMTNmMzhmZjU4NTU4Y2FjNjFiNDU0NAY6BkVG--09932df965dfccc6e54fbcffaa68cdfd7a840784
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
