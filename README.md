## foodTrackr - API

Link to App: [foodTrackr](https://narichasavanorkejoyce.github.io/food-trackr-client/)

![Imgur](http://i.imgur.com/ZzUgTGj.png)

## About
foodTrackr is an app to help people remember what is in their kitchen. When I'm out of the house, I often forget what I have in the fridge and it's more likely that I'll buy something I already have. In addition, foodTrackr can help you keep track of when food will expire. My hope is that we can reduce accidental food waste if people are more aware of what is in their fridge.

## Data Model
- One-to-Many
  - [ERD](http://i.imgur.com/3gPzKnM.jpg?1)
  - Users (a user has many items)
  - Items (an item belongs to a user)

## Dependencies

Install with `bundle install`.

-   [`rails-api`](https://github.com/rails-api/rails-api)
-   [`rails`](https://github.com/rails/rails)
-   [`active_model_serializers`](https://github.com/rails-api/active_model_serializers)
-   [`ruby`](https://www.ruby-lang.org/en/)
-   [`postgres`](http://www.postgresql.org)

## Tasks

-   `bin/rake routes` lists the endpoints available in your API.
-   `bin/rake test` runs automated tests.
-   `bin/rails console` opens a REPL that pre-loads the API.
-   `bin/rails db` opens your database client and loads the correct database.
-   `bin/rails server` starts the API.
-   `scripts/*.sh` run various `curl` commands to test the API. See below.

## Tests

`curl` command scripts are included in [`scripts`](scripts) to test built-in actions. Files names correspond to the appropriate action.

### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |

#### POST /sign-up

Request:

```sh
curl http://localhost:4741/sign-up \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'
```

```sh
EMAIL=ava@bob.com PASSWORD=hannah scripts/sign-up.sh
```

Response:

```md
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "ava@bob.com"
  }
}
```

#### POST /sign-in

Request:

```sh
curl http://localhost:4741/sign-in \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'
```

```sh
EMAIL=ava@bob.com PASSWORD=hannah scripts/sign-in.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "ava@bob.com",
    "token": "BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f"
  }
}
```

#### PATCH /change-password/:id

Request:

```sh
curl --include --request PATCH "http://localhost:4741/change-password/$ID" \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'
```

```sh
ID=1 OLDPW=hannah NEWPW=elle TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/change-password.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

#### DELETE /sign-out/:id

Request:

```sh
curl http://localhost:4741/sign-out/$ID \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=1 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/sign-out.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

### Users

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/users`    | `users#index`     |
| GET  | `/users/1`  | `users#show`      |

#### GET /users

Request:

```sh
curl http://localhost:4741/users \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
```

```sh
TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/users.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "users": [
    {
      "id": 2,
      "email": "bob@ava.com"
    },
    {
      "id": 1,
      "email": "ava@bob.com"
    }
  ]
}
```

#### GET /users/:id

Request:

```sh
curl --include --request GET http://localhost:4741/users/$ID \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=2 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/user.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 2,
    "email": "bob@ava.com"
  }
}
```

### foodTrackr Actions

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/items`               | `items#create`    |
| GET    | `/items`               | `items#index`     |
| PATCH  | `/items/:id`           | `items#update`    |
| DELETE | `/items/:id`           | `items#destroy`   |

#### POST /create

Request:

```sh
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
```

Response:

```md
HTTP/1.1 201 Created
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Location: http://localhost:4741/items/89
Content-Type: application/json; charset=utf-8
ETag: W/"8b07cc195c83525a2d144b4e5098a318"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 3ad159cd-da50-486e-9efb-a40dc50a1571
X-Runtime: 0.023185
Vary: Origin
Transfer-Encoding: chunked

{"item":{"id":89,"food_name":"carrots","purchase_date":"2017-04-27","exp_date":"2017-06-01","store_name":"Trader Joes","quantity":true,"purchased":true,"days_to_exp":30}}
```

#### GET /items

Request: Get User's Food Items
```sh
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/items?quantity=true"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
  ```

Response: Get User's Food Items
```
HTTP/1.1 200 OK
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/"df35a9926db75d353c7fd57e5a3239f9"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 8a31c40d-6273-4400-88d8-aab9a458bfa8
X-Runtime: 0.007277
Vary: Origin
Transfer-Encoding: chunked

{"items":[{"id":86,"food_name":"chicken","purchase_date":"2017-05-01","exp_date":"2017-05-10","store_name":"Stop \u0026 Shop","quantity":true,"purchased":true,"days_to_exp":8},{"id":88,"food_name":"pizza","purchase_date":"2017-05-02","exp_date":"2017-05-10","store_name":"Otto's","quantity":true,"purchased":true,"days_to_exp":8},{"id":87,"food_name":"cheese","purchase_date":"2017-05-01","exp_date":"2017-05-20","store_name":"Whole Foods","quantity":true,"purchased":true,"days_to_exp":18},{"id":89,"food_name":"carrots","purchase_date":"2017-04-27","exp_date":"2017-06-01","store_name":"Trader Joes","quantity":true,"purchased":true,"days_to_exp":30}]}
```
Request: Get User's Grocery List
```sh
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/items?quantity=false"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
  ```
Response: Get User's Grocery List
```
HTTP/1.1 200 OK
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/"c08024a88957fd6ecb0384c3b36fa308"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: e1647236-ab5a-46b2-ac8b-2e63c5300df5
X-Runtime: 0.006484
Vary: Origin
Transfer-Encoding: chunked

{"items":[{"id":84,"food_name":"bread","purchase_date":"2017-05-02","exp_date":"2017-05-10","store_name":"Clear Flour","quantity":false,"purchased":true,"days_to_exp":8},{"id":81,"food_name":"blueberries","purchase_date":"2017-05-02","exp_date":"2017-06-02","store_name":"Frommagio","quantity":false,"purchased":true,"days_to_exp":31},{"id":75,"food_name":"oranges","purchase_date":"2017-05-06","exp_date":"2017-05-10","store_name":"Whole Foods","quantity":false,"purchased":true,"days_to_exp":8}]}
```
#### Patch /items/:id
Request: Update value of quantity to "false"
```sh
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
```

Response: Update value of quantity to "false"
```
HTTP/1.1 204 No Content
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Cache-Control: no-cache
X-Request-Id: 17aa68cb-b549-4327-8dc5-b3462c0d8e8c
X-Runtime: 0.013511
Vary: Origin
```
#### Delete /items/:id

Request:
```sh
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/items/$ID"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"
```

Response:
```
HTTP/1.1 204 No Content
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Cache-Control: no-cache
X-Request-Id: bc2a000f-311c-4ed6-b2e4-1ba6678463e8
X-Runtime: 0.012554
Vary: Origin
```

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
