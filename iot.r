

***
IOT
***
    - AWS IoT allows Internet-connected devices such as sensors, embedded devices, and applications to connect and
      communicate over the AWS cloud. Lets applications in the cloud interact with internet connected devices. Devices
      either collect and process telemetry from devices or allow users to control a device remotely.
      IoT applications Collect the information and process it sends messages in JSON
      format on MQTT topics
    - Every MQTT can trace the device when it gets updated. When a message is sent across on the MQTT topic, its passed
      to the MQTT message broker which distributes that message on the MQTT topic to the users who have subscribed to
      that topic
    - MQTT implies MQ Telemetry Transport, which is a lightweight and easy protocol that is built for low bandwidth
      devices having less reliable networks
    - AWS IoT is gaining immense popularity as the most opted technology as it establishes a secured connection for
      the internet-connected devices and the AWS.  It sets up a reliable connection to the complex network that sends
      data to the Amazon Virtual Private Cloud (Amazon VPC)
    - IoT makes it easy to use AWS services like AWS CloudTrail, Lambda, Amazon S3 and so on which have built-in
      integration. It’s designed to take the input, process the data, and send it back to the connected devices
    - MQTT stands for Message Queuing Telemetry Transport. It is a standard messaging protocol designed
      specifically for use in IoT applications. The protocol has become very popular with the Internet of Things because
      it provides a publish and subscribe model, making it easy to create connectivity between various devices or sensors
    - X.509 certificates provide AWS IoT with the ability to authenticate client and device connections. Client
      certificates must be registered with AWS IoT before a client can communicate with AWS IoT. A client certificate
      can be registered in multiple AWS accounts in the same AWS Region to facilitate moving devices between your AWS
      accounts in the same region
    - Rules give your devices the ability to interact with AWS services. Rules are analyzed and actions are performed
      based on the MQTT topic stream. You can use rules to support tasks like these:
        - Augment or filter data received from a device
        - Write data received from a device to an Amazon DynamoDB database
        - Send a push notification to all users who are using Amazon SNS
        - Publish data to an Amazon SQS queue