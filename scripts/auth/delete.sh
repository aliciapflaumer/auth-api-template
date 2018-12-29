#!/bin/bash

API="${API_ORIGIN:-http://localhost:3000}"
URL_PATH="/delete"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \

echo
