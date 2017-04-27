  TOKEN=BAhJIiU1NjI1ODYxMjViMWU1OTdkOWVjODIxODM0MjFjODU3MgY6BkVG--f83e2dcdc671fa7ac28216424396dc6c9560b2a0
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
