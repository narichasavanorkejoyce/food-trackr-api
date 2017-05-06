  TOKEN=BAhJIiU5MjhiOWE0OGUxMTUzNDMyMTVjZjY0ZThhMzFjNjg3OAY6BkVG--4252433afc8b9baa69c4b6f7d999615fd0776f08
  API="${API_ORIGIN:-http://localhost:4741}"
  URL_PATH="/items"
  curl "${API}${URL_PATH}" \
   --include \
   --request POST \
   --header "Content-Type: application/json" \
   --header "Authorization: Token token=$TOKEN" \
   --data '{
     "item": {
       "food_name": "beans",
       "purchase_date": "2017-04-27",
       "exp_date": "2017-06-01",
       "store_name": "Trader Joes",
       "quantity": "true",
       "purchased": "true"
     }
   }'

  echo
