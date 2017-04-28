  TOKEN=BAhJIiVmZmE5ZjVjYjI1MTc4Mjg0NjFjZjAwODU3ODdjM2RmNQY6BkVG--30a964d03d7489d3662f641fd5f09064c7499da3
  API="${API_ORIGIN:-http://localhost:4741}"
  URL_PATH="/items"
  curl "${API}${URL_PATH}" \
   --include \
   --request POST \
   --header "Content-Type: application/json" \
   --header "Authorization: Token token=$TOKEN" \
   --data '{
     "item": {
       "food_name": "carrots",
       "purchase_date": "2017-04-27",
       "exp_date": "2017-06-01",
       "store_name": "Trader Joes",
       "quantity": "true",
       "purchased": "true"
     }
   }'

  echo
