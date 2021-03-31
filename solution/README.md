docker images //to get image id
docker run -d 8cb //create docker container
docker logs b6 //check logs for container id b689c4474bf8df2e638da3daadd1d99e2a0c436cdbea8652a5d35e8943849259
docker cp /csvserver/inputFile b6:/csvserver/inputdata //since we need inputdata file placed in order to remove the error
docker start b6 // start existing container with container ID
docker exec -it b6 /bin/bash //container terminal
netstat -anp // run this command in container to get the port for application
docker stop b689c4474bf8df2e638da3daadd1d99e2a0c436cdbea8652a5d35e8943849259 //stop docker container
docker rm b689c4474bf8df2e638da3daadd1d99e2a0c436cdbea8652a5d35e8943849259 ////delete docker container
docker run -d -p 9393:9300 -e CSVSERVER_BORDER='Orange' 8cb //setup port to connect to container application from local machine
docker logs 9d539fc1305bbd103610e1f84fd56a3af96f762f396574ff30f0f172ed4fcf53 //check logs for any issue
docker cp /csvserver/inputFile b6:/csvserver/inputdata
docker start 9d