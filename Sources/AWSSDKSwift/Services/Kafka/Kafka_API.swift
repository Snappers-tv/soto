//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import NIO

/**
Client object for interacting with AWS Kafka service.

The operations for managing an Amazon MSK cluster.
*/
public struct Kafka {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the Kafka client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "kafka",
            serviceProtocol: .restjson,
            apiVersion: "2018-11-14",
            endpoint: endpoint,
            possibleErrorTypes: [KafkaErrorType.self]
        )
    }
    
    //MARK: API Calls

    ///  Creates a new MSK cluster.
    public func createCluster(_ input: CreateClusterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterResponse> {
        return client.execute(operation: "CreateCluster", path: "/v1/clusters", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a new MSK configuration.
    public func createConfiguration(_ input: CreateConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConfigurationResponse> {
        return client.execute(operation: "CreateConfiguration", path: "/v1/configurations", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the request.
    public func deleteCluster(_ input: DeleteClusterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterResponse> {
        return client.execute(operation: "DeleteCluster", path: "/v1/clusters/{clusterArn}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request.
    public func describeCluster(_ input: DescribeClusterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterResponse> {
        return client.execute(operation: "DescribeCluster", path: "/v1/clusters/{clusterArn}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a description of the cluster operation specified by the ARN.
    public func describeClusterOperation(_ input: DescribeClusterOperationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterOperationResponse> {
        return client.execute(operation: "DescribeClusterOperation", path: "/v1/operations/{clusterOperationArn}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a description of this MSK configuration.
    public func describeConfiguration(_ input: DescribeConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigurationResponse> {
        return client.execute(operation: "DescribeConfiguration", path: "/v1/configurations/{arn}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a description of this revision of the configuration.
    public func describeConfigurationRevision(_ input: DescribeConfigurationRevisionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigurationRevisionResponse> {
        return client.execute(operation: "DescribeConfigurationRevision", path: "/v1/configurations/{arn}/revisions/{revision}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  A list of brokers that a client application can use to bootstrap.
    public func getBootstrapBrokers(_ input: GetBootstrapBrokersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBootstrapBrokersResponse> {
        return client.execute(operation: "GetBootstrapBrokers", path: "/v1/clusters/{clusterArn}/bootstrap-brokers", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets the Apache Kafka versions to which you can update the MSK cluster.
    public func getCompatibleKafkaVersions(_ input: GetCompatibleKafkaVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCompatibleKafkaVersionsResponse> {
        return client.execute(operation: "GetCompatibleKafkaVersions", path: "/v1/compatible-kafka-versions", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of all the operations that have been performed on the specified MSK cluster.
    public func listClusterOperations(_ input: ListClusterOperationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListClusterOperationsResponse> {
        return client.execute(operation: "ListClusterOperations", path: "/v1/clusters/{clusterArn}/operations", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of all the MSK clusters in the current Region.
    public func listClusters(_ input: ListClustersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListClustersResponse> {
        return client.execute(operation: "ListClusters", path: "/v1/clusters", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of all the revisions of an MSK configuration.
    public func listConfigurationRevisions(_ input: ListConfigurationRevisionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListConfigurationRevisionsResponse> {
        return client.execute(operation: "ListConfigurationRevisions", path: "/v1/configurations/{arn}/revisions", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of all the MSK configurations in this Region.
    public func listConfigurations(_ input: ListConfigurationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListConfigurationsResponse> {
        return client.execute(operation: "ListConfigurations", path: "/v1/configurations", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of Kafka versions.
    public func listKafkaVersions(_ input: ListKafkaVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListKafkaVersionsResponse> {
        return client.execute(operation: "ListKafkaVersions", path: "/v1/kafka-versions", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of the broker nodes in the cluster.
    public func listNodes(_ input: ListNodesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListNodesResponse> {
        return client.execute(operation: "ListNodes", path: "/v1/clusters/{clusterArn}/nodes", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of the tags associated with the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/v1/tags/{resourceArn}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Adds tags to the specified MSK resource.
    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "TagResource", path: "/v1/tags/{resourceArn}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Removes the tags associated with the keys that are provided in the query.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "UntagResource", path: "/v1/tags/{resourceArn}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the number of broker nodes in the cluster. You can use this operation to increase the number of brokers in an existing cluster. You can't decrease the number of brokers.
    public func updateBrokerCount(_ input: UpdateBrokerCountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBrokerCountResponse> {
        return client.execute(operation: "UpdateBrokerCount", path: "/v1/clusters/{clusterArn}/nodes/count", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the EBS storage associated with MSK brokers.
    public func updateBrokerStorage(_ input: UpdateBrokerStorageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBrokerStorageResponse> {
        return client.execute(operation: "UpdateBrokerStorage", path: "/v1/clusters/{clusterArn}/nodes/storage", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the cluster with the configuration that is specified in the request body.
    public func updateClusterConfiguration(_ input: UpdateClusterConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateClusterConfigurationResponse> {
        return client.execute(operation: "UpdateClusterConfiguration", path: "/v1/clusters/{clusterArn}/configuration", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the Apache Kafka version for the cluster.
    public func updateClusterKafkaVersion(_ input: UpdateClusterKafkaVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateClusterKafkaVersionResponse> {
        return client.execute(operation: "UpdateClusterKafkaVersion", path: "/v1/clusters/{clusterArn}/version", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the monitoring settings for the cluster. You can use this operation to specify which Apache Kafka metrics you want Amazon MSK to send to Amazon CloudWatch. You can also specify settings for open monitoring with Prometheus.
    public func updateMonitoring(_ input: UpdateMonitoringRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMonitoringResponse> {
        return client.execute(operation: "UpdateMonitoring", path: "/v1/clusters/{clusterArn}/monitoring", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
