#! /usr/bin/sh


endpoint=`aws rds --region us-east-1 describe-db-instances --query "DBInstances[*].Endpoint.Address"| grep mod5`
echo $endpoint


