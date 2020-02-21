curl 'https://lifts-tracker.herokuapp.com/lifts' \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
