# Client - self signed JWT Auth

A client, which is secured with self-signed JWT can be used to connect to a secured service.

The client metadata is enriched with the `Authorization: Bearer <token>` header by passing the `http:JwtIssuerConfig` to the `auth` configuration of the client. A self-signed JWT is issued before the request is sent.

>**Info:** For more information on the underlying module, see the [`oauth2` module](https://lib.ballerina.io/ballerina/oauth2/latest/).

## Generate the service definition

1. Create a new Protocol Buffers definition file named `grpc_client.proto` and add the service definition to it.

    ::: code grpc_client.proto :::

2. Run the command below in the Ballerina tools distribution for stub generation.
   
    ::: out grpc_client.out :::

Once you run the command, the `grpc_client_pb.bal` file is generated inside the stubs directory.

>**Info:** For more information on how to use the Ballerina Protocol Buffers tool, see the [Proto To Ballerina](https://ballerina.io/learn/by-example/proto-to-ballerina.html) example.

## Implement and run the client

1. Create a Ballerina package.
   
2. Copy the generated `grpc_secured_pb.bal` stub file to the package. For example, if you create a package named `client`, copy the stub file to the `client` package.

3. Create a new `grpc_client_oauth2_refresh_token_grant_type.bal` Ballerina file inside the `client` package and add the client implementation.

    >**Tip:** You may need to change the trusted certificate file path and private key file path in the code below. 

   ::: code grpc_client_self_signed_jwt_auth.bal :::

4. Execute the commands below to build and run the `client` package.

    >**Info:** As a prerequisite to running the client, start the [JWT Auth service](/learn/by-example/grpc-service-jwt-auth/).

   ::: out grpc_client_self_signed_jwt_auth.out :::