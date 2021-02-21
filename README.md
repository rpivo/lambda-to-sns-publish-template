# lambda-to-sns-publish-template

A simple template for publishing to an AWS SNS topic using a Boto3 Lambda function.

To build the Lambda zip:

- Create an environment file at the root of the directory called **env.sh** that exports a `LOCAL_PATH` variable representing the current directory where the build will occur. Ex:

```sh
export LOCAL_PATH=~/Documents/projects/my-folder;
```

- Add an `ARN` environment variable to the Lambda function. This is the ARN of the SNS topic. Note that the Lambda function's execution role needs to be able to publish to the SNS topic, so that will have to be added in.
- Add Python package dependencies to build.sh (see `# install python dependencies` section).
- Start Docker.
- Run `sh start.sh`.
