#!/bin/bash

API="${API_ORIGIN:-http://localhost:3000}"
URL_PATH="/users"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \

echo
