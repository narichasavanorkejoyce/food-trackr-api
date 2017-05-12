TOKEN=BAhJIiUwYjE3Yjk1MWJhYzc0NGNmZmQzMWFiN2E2ZjE0YzU1YwY6BkVG--bcaaff62b25aa1e7516d580e2f16e45edc2feb07
  API="${API_ORIGIN:-https://food-trackr.herokuapp.com}"
  URL_PATH="/items"
  curl "${API}${URL_PATH}" \
   --include \
   --request POST \
   --header "Content-Type: application/json" \
   --header "Authorization: Token token=$TOKEN" \
   --data '{
     "item": {
       "food_name": "coffee",
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
