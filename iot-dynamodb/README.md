# AWS IoT to DynamoDB

# AWS IoT Core is a cloud service that connects devices with AWS services and other devices through its device gateway 
# and message broker. Devices can publish messages that contain a current or requested state. Devices can subscribe to 
# messages to be notified of changes to the current and requested states of other devices. The AWS IoT Core device gateway 
# receives published messages and the message broker sends them to the devices that have subscribed to them.
# This pattern explains how to put data to AWS DynamoDB Table using AWS IoT Topic Rules.


## Deployment Instructions
- cd iot-dynamodb
- sam build
- sam deploy
- 

## Testing
* IoT Rule -> DynamoDB Action
- Navigate to [AWS IoT Core Management Console Test Client]
  (https://console.aws.amazon.com/iot/home#/test)
- Select 'Subscribe to a topic'
- Enter Subscription topic as 'topics/ThingsGroupOne/TestThing' and select 'Subscribe'
- Go to Publish to a topic
- Enter below example message payload JSON and select 'Publish'.
  Note: IoT Rule in this case adds attributes 'thingId' (fetched from the topic entered in above step) and 'timestamp' 
  putting event to DynamoDB Table. It puts full event payload JSON under 'device_data'.
  ```
  {
    "temperature_F" : "86"
  }
  ```

* IoT Rule -> DynamoDBv2 Action
- Select 'Subscribe to a topic
- Enter subscription topic as 'topics/ThingsGroupTwo/TestThing' and select 'Subscribe'
- Go to Publish to a topic
- Enter below example message payload JSON and select 'Publish'.
- 
  ```
  {
    "eventId" : "cf2b37c2-04c2-11ed-b293-aa665a182631",
    "temperature_F" : "86"
  }
  ```
- Navigate to [DynamoDB Management Console]
  (https://console.aws.amazon.com/dynamodbv2/home#tables) 
- Check the values in DynamoDB table 'IoTExampleTableTwo'


