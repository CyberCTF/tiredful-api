#!/bin/sh
# batman / Batman@123 gets an OAuth access token with the client credentials the app ships
# (Tiredful-API/client_cred.txt), as the Token Manager page does.
set -e
id=ALGGN0UmsY2Gb9cs3V4CEKMfpBJ2D2XZQXuTFfND
secret=mWM7pgvjtUSAtfaK8RXLjzOaLmurBxIWxMdQIQ0t1fSv9orqOnYr5wP5CaFN8DE18NiFiKKalQPu1WecmpbfoZCGYhMqMACz6i2WkWYs5E8gjXxqekjCyPkhBmO5n5EN
out=$(curl -fsS -u "$id:$secret" --data "grant_type=password&username=batman&password=Batman@123" http://web:8000/oauth/token/)
echo "$out" | grep -q "access_token"
