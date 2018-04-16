sed -i "s/PULL_URL/$1/g"  /nginx-1.13.6/conf/nginx.conf

/usr/local/nginx/sbin/nginx -c /nginx-1.13.6/conf/nginx.conf 

#nohup tty.js --config /ttyjs-config.json & 

