#!/bin/bash

API="${API_ORIGIN:-http://localhost:3000}"
URL_PATH="/sign-out"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \

echo
