curl "http://localhost:4741/lifts/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-type: application/json" \
  --data '{
    "lift": {
      "exercise": "'"${EXER}"'",
      "weight": "'"${WEIGHT}"'",
      "reps": "'"${REPS}"'"
    }
  }'
