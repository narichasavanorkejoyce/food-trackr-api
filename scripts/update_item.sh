ID=12
TOKEN=BAhJIiU4OGFiOGI1N2QwZGFmZmM4Zjc2ZDYzY2M3NjY2MGFjOQY6BkVG--16157b70c1076f7ad52b780fb4214680a145245b
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/items/$ID"
curl "${API}${URL_PATH}" \
 --include \
 --request PATCH \
 --header "Content-Type: application/json" \
 --header "Authorization: Token token=$TOKEN" \
 --data '{
   "item": {
     "food_name": "pinto beans"
   }
 }'

echo
