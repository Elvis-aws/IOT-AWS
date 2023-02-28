# AWS IoT to DynamoDB

This pattern explains how to put data to AWS DynamoDB Table using AWS IoT Topic Rules.


## Deployment Instructions

1. From the command line, use AWS SAM to deploy the AWS resources for the pattern as specified in the template.yml file:
    ```
    sam deploy --guided
    ```
2. During the prompts:
    * Enter a stack name
    * Enter the desired AWS Region
    * Allow SAM CLI to create IAM roles with the required permissions.

## Testing

* IoT Rule -> DynamoDB Action

  * Visit [AWS IoT Core Management Console Test Client](https://console.aws.amazon.com/iot/home#/test)
  * Select 'Subscribe to a topic', enter Subscription topic as 'topics/ThingsGroupOne/TestThing' and select 'Subscribe'.
  * Enter below example message payload JSON and select 'Publish'.
  Note: IoT Rule in this case adds attributes 'thingId' (fetched from the topic entered in above step) and 'timestamp' 
  putting event to DynamoDB Table. It puts full event payload JSON under 'device_data'.
  ```
  {
    "temperature_F" : "86"
  }
  ```

* IoT Rule -> DynamoDBv2 Action

  * Visit [AWS IoT Core Management Console Test Client](https://console.aws.amazon.com/iot/home#/test)
  * Select 'Subscribe to a topic', enter subscription topic as 'topics/ThingsGroupTwo/TestThing' and select 'Subscribe'.
  * Enter below example message payload JSON and select 'Publish'.
  ```
  {
    "eventId" : "cf2b37c2-04c2-11ed-b293-aa665a182631",
    "temperature_F" : "86"
  }
  ```
  * Visit [DynamoDB Management Console](https://console.aws.amazon.com/dynamodbv2/home#tables) and check the values in 
    DynamoDB table 'IoTExampleTableTwo'.


## Cleanup

1. Delete the stack
    ```bash
    sam delete
    ```

