#!/bin/sh

age_limit=$1

find_vaccine() {
  start_day=$(date -v+0d +%d-%m-%Y)
  district_id=$1
  response=$(curl -s -S -X GET "https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/calendarByDistrict?district_id=${district_id}&date=${start_day}" --header 'User-Agent: PostmanRuntime/7.28.0')

  if [ -z "$age_limit" ]; then
    echo "${response}" | jq '.centers[] | select(.sessions[].available_capacity > 0 and .sessions[].vaccine == "COVISHIELD")'
  elif [ "$age_limit" -eq 18 ]; then
    echo "${response}" | jq '.centers[] | select(.sessions[].available_capacity > 0 and .sessions[].vaccine == "COVISHIELD" and .sessions[].min_age_limit == 18)'
  elif [ "$age_limit" -eq 45 ]; then
    echo "${response}" | jq '.centers[] | select(.sessions[].available_capacity > 0 and .sessions[].vaccine == "COVISHIELD" and .sessions[].min_age_limit == 45)'
  else
    echo "Invalid Age group provided!"
    exit 222
  fi

}

check_delhi() {
  echo "\n\n"
  echo "-------------------------------------------------------"
  echo "Finding vaccines available in all Delhi Districts!"
  echo "-------------------------------------------------------"

  for district_id in {140..150}; do

    find_vaccine "${district_id}"
    echo "---Next Center---"

  done

}

check_ghaziabad() {
  echo "\n\n"
  echo "-------------------------------------------------------"
  echo "Finding vaccines available in Ghaziabad District!"
  echo "-------------------------------------------------------"

  for district_id in {651..651}; do

    find_vaccine "${district_id}"

  done

}

while true; do
  check_delhi
  check_ghaziabad

  echo "\n\n"
  echo "Checking every 15 minutes, pres CTRL+C to stop..."
  sleep 900
done

echo "Script execution completed!"
