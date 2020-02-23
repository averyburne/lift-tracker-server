curl 'http://localhost:4741/lifts' \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-type: application/json" \
  --data '{
    "lift": {
      "exercise": "'"${EXER}"'",
      "weight": "'"${WEIGHT}"'",
      "reps": "'"${REPS}"'"
    }
  }'
