#!/bin/bash
echo "Initializing LocalStack AWS S3 Buckets..."
awslocal s3 mb s3://analytics-data-lake
awslocal s3 ls
echo "LocalStack S3 Bucket analytics-data-lake created successfully!"
