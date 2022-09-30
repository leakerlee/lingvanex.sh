#!/bin/bash

echo ${1}
TEXT=${1}

curl -s --trace-ascii /tmp/lingvanex.log --output - -H 'Sec-Fetch-Dest: empty' -H 'Sec-Fetch-Mode: cors' -H 'Sec-Fetch-Site: same-origin' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: zh-CN,zh;q=0.8,zh-TW;q=0.7,zh-HK;q=0.5,en-US;q=0.3,en;q=0.2' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Host: backenster.com' -H 'Authorization: Fujiwaranosai' -H 'TE: trailers' -H 'Cookie: INGRESSCOOKIE=1664344422.185.586.540436|04f981c8ca27bee1461fad758654d163' -H 'Origin: moz-extension://2358fd5c-0086-47e3-96b3-8db0bbf6f495' -d 'from=en_US' -d 'to=zh-Hans_CN' -d "text=${TEXT}" -d 'platform=browserExtension' -d 'uuid=6df1c3f4-727b-47a2-ab13-0acff726203b' -A 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0' https://backenster.com/v2/api/v3/translate/ | zcat
echo
