# live-server-nginx-edge

直播边缘服务器，用于从中心服务器拉取直播流供用户观看，可以做集群

nginx edge live server which pull stream from nginx live server
                  
             
live-server ----> (pull) edge-server1/edge-server2...  ----  Users


all services:

live-server-nginx

live-server-callback

live-client-springboot

live-config

<b>live-server-nginx-edge</b>

*we need to use live server callback api to sychronize live status in database

*so we added a custom ENV in dockerfile:

docker run -d -p 1935:1935 -p 8099:80 -e PULL_URL="xxx.xxx.xxx.xxx" IMAGENAME

please notice that 

1. [/] symbol need to be changed to [\\/\]

2. the url dont need to end with [/]
