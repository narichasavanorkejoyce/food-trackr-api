  TOKEN=BAhJIiUxOWE0OTNjNzZhMDc3Nzc1NzY1OTRmYzU3MzhkNTJjNAY6BkVG--de2ddc03c8b3d468c7b15c4bd70faaf045672ac5
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
