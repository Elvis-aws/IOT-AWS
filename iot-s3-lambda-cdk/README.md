# AWS IoT Core to Amazon S3 to AWS Lambda

This pattern contains a sample AWS CDK stack to create an IoT Rule with a S3 action and an AWS Lambda function.
When a message is published to the IoT topic defined in the IoT Rule, this message will be saved as an object in the 
S3 bucket. The object is added to the prefix `iot/` and is identified by the timestamp in unix format. The Lambda 
function is configured with an event source mapping will be triggered when a new object is added to the `iot/` 
prefix. In this sample the Lambda function extracts and logs the S3 object key.

## Deployment Instructions

1. Create and activate the project's virtual environment
   ```sh
    python -m venv .venv
    source .venv/bin/activate
   ```
2. Install the project dependencies

   ```sh
   python -m pip install -r requirements.txt
   ```
3. Deploy the stack to your default AWS account and region.
   ```sh
   cdk deploy
   ```
## How it works

The CDK app deploys the resources and the IAM permissions required to run the application. 

## Testing

Log into the AWS Console, browse to AWS IoT Core:

1. In the AWS IoT Core Console, in the `Test` section (left-side pane), select the `MQTT test client`. 

2. Then under `Publish to a topic`, in the Topic filter field enter this: `device/data`, type a custom message or use 
   the default message payload: `{"message": "Hello from AWS IoT console"}`. Then click the `Publish` button.

3. Check the CloudWatch Logs for the Lambda function. The Lambda execution logs should contain the key of the S3 object 
   in the format `iot/<timestamp>.json`. For example:

```json
   iot/1655201156794.json
```

## Cleanup
 
Run the given command to delete the resources that were created. It might take some time for the CloudFormation stack 
to get deleted.

```sh
cdk destroy
```

