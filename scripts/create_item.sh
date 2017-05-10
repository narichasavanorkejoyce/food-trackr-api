TOKEN=BAhJIiU1NmRkNTFhOGI0NWYzYWRjMGRlZjI5MzBkZjFlMTRiNQY6BkVG--ab563f3732da309d277a4ab8b33bd8f631a101f2
  API="${API_ORIGIN:-http://localhost:4741}"
  URL_PATH="/items"
  curl "${API}${URL_PATH}" \
   --include \
   --request POST \
   --header "Content-Type: application/json" \
   --header "Authorization: Token token=$TOKEN" \
   --data '{
     "item": {
       "food_name": "almonds",
       "purchase_date": "2017-04-27",
       "exp_date": "2017-06-01",
       "store_name": "Trader Joes",
       "quantity": "hello",
       "purchased": "true"
     }
   }'



  #  TOKEN=BAhJIiU5YmI2OGE2MzE1OWIzOWJkZTU1MTM4OTQ4MmUxYjU5ZgY6BkVG--843907d18c5c0594c1354678db212fec6981db53
  #    API="${API_ORIGIN:-http://localhost:4741}"
  #    URL_PATH="/items"
  #    curl "${API}${URL_PATH}" \
  #     --include \
  #     --request POST \
  #     --header "Content-Type: application/json" \
  #     --header "Authorization: Token token=$TOKEN" \
  #     --data '{
  #       "item": {
  #         "food_name": "cabbage",
  #         "purchase_date": "2017-04-27",
  #         "exp_date": "2017-06-01",
  #         "store_name": "Trader Joes",
  #         "quantity": "null",
  #         "purchased": "true"
  #       }
  #     }'

  echo
