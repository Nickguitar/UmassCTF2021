#!/bin/bash
curl -c cookie.txt "http://34.121.84.161:8084"
# You need to get the cookie, use it on a request, get the new cookie setted on that request and use it on the next request, and so on untill 500 requests

for i in {0..500}; do

	curl -L -b cookie.txt -c cookie.txt 'http://34.121.84.161:8084/' \
	  -H 'Proxy-Connection: keep-alive' \
	  -H 'Cache-Control: max-age=0' \
	  -H 'Upgrade-Insecure-Requests: 1' \
	  -H 'Origin: http://34.121.84.161:8084' \
	  -H 'Content-Type: application/x-www-form-urlencoded' \
	  -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36' \
	  -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
	  -H 'Referer: http://34.121.84.161:8084/' \
	  -H 'Accept-Language: en-US,en;q=0.9' \
	  --data-raw 'guess=a+a+a+a' \
	  --compressed \
	  --insecure
done 
