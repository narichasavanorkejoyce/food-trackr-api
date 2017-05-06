TOKEN=BAhJIiUzMjhiOTBkN2E1Y2RjMjAzYjMzMjY1YTgzNTNmYmI0NQY6BkVG--638359e8e0d5c913bec817dd29f7029de3e9e7de
  API="${API_ORIGIN:-http://localhost:4741}"
  URL_PATH="/items"
  curl "${API}${URL_PATH}" \
   --include \
   --request POST \
   --header "Content-Type: application/json" \
   --header "Authorization: Token token=$TOKEN" \
   --data '{
     "item": {
       "food_name": "bluberries",
       "purchase_date": "2017-04-27",
       "exp_date": "2017-06-01",
       "store_name": "Trader Joes",
       "quantity": "true",
       "purchased": "true"
     }
   }'

  echo
