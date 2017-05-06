  TOKEN=BAhJIiUyMmI5YzIyN2IwMDI2ODAzNDllYjczYWQxZGE3MzNjYQY6BkVG--0ee77799ea335a716c215373bf50f085781b2e17
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
