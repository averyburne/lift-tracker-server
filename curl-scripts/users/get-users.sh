curl 'https://lifts-tracker.herokuapp.com/users' \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
