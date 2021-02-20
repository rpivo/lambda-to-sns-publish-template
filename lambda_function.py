import boto3
import json
import os


def lambda_handler(event, context):
    body = 'Hello, world!'

    boto3.client('sns').publish(
        TargetArn=os.environ['ARN'],
        Message=body,
        MessageStructure='string'
    )
