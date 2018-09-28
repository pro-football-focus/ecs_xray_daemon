#AWS X-Ray Daemon for ECS

Creates a docker container listening on UDP 2000 for AWS X-Ray packets.

##Permissions

In order for the daemon to post data into AWS, the ECS task must have the following policy:

```JSON
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "xray:PutTraceSegments",
                "xray:PutTelemetryRecords",
                "xray:GetSamplingRules",
                "xray:GetSamplingTargets",
                "xray:GetSamplingStatisticSummaries"
            ],
            "Resource": [
                "*"
            ]
        }
    ]
}
```