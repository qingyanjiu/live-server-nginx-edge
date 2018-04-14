# live-server-nginx-edge
nginx edge live server which pull stream from nginx live server


-----------             ------------- 
                        
                        edge-server1
live-server  ------->   edge-server2  -------------  Users
               pull     edge-server3
                        ...
-----------             -------------




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
