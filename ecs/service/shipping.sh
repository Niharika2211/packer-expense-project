#!/bin/bash
aws ecs create-service \
    --cluster roboshop-cluster \
    --service-name shipping-service \
    --task-definition shipping \
    --desired-count 1 \
    --launch-type FARGATE \
    --network-configuration "awsvpcConfiguration={subnets=[subnet-0731498b80aa56290],securityGroups=[sg-00c0933258e06cea0],assignPublicIp=ENABLED}"