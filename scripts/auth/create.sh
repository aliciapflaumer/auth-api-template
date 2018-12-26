#!/bin/bash

API="${API_ORIGIN:-http://localhost:3000}"
URL_PATH="/users/create/"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "username": "'"${USERNAME}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
