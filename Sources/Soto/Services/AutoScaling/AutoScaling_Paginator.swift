//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension AutoScaling {
    ///  Describes one or more Auto Scaling groups.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func describeAutoScalingGroupsPaginator<Result>(
        _ input: AutoScalingGroupNamesType,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, AutoScalingGroupsType, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeAutoScalingGroups,
            tokenKey: \AutoScalingGroupsType.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func describeAutoScalingGroupsPaginator(
        _ input: AutoScalingGroupNamesType,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (AutoScalingGroupsType, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeAutoScalingGroups,
            tokenKey: \AutoScalingGroupsType.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Describes one or more Auto Scaling instances.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func describeAutoScalingInstancesPaginator<Result>(
        _ input: DescribeAutoScalingInstancesType,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, AutoScalingInstancesType, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeAutoScalingInstances,
            tokenKey: \AutoScalingInstancesType.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func describeAutoScalingInstancesPaginator(
        _ input: DescribeAutoScalingInstancesType,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (AutoScalingInstancesType, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeAutoScalingInstances,
            tokenKey: \AutoScalingInstancesType.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Describes one or more launch configurations.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func describeLaunchConfigurationsPaginator<Result>(
        _ input: LaunchConfigurationNamesType,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, LaunchConfigurationsType, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeLaunchConfigurations,
            tokenKey: \LaunchConfigurationsType.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func describeLaunchConfigurationsPaginator(
        _ input: LaunchConfigurationNamesType,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (LaunchConfigurationsType, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeLaunchConfigurations,
            tokenKey: \LaunchConfigurationsType.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Describes the notification actions associated with the specified Auto Scaling group.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func describeNotificationConfigurationsPaginator<Result>(
        _ input: DescribeNotificationConfigurationsType,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, DescribeNotificationConfigurationsAnswer, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeNotificationConfigurations,
            tokenKey: \DescribeNotificationConfigurationsAnswer.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func describeNotificationConfigurationsPaginator(
        _ input: DescribeNotificationConfigurationsType,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeNotificationConfigurationsAnswer, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeNotificationConfigurations,
            tokenKey: \DescribeNotificationConfigurationsAnswer.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Describes the policies for the specified Auto Scaling group.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func describePoliciesPaginator<Result>(
        _ input: DescribePoliciesType,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, PoliciesType, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describePolicies,
            tokenKey: \PoliciesType.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func describePoliciesPaginator(
        _ input: DescribePoliciesType,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (PoliciesType, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describePolicies,
            tokenKey: \PoliciesType.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Describes one or more scaling activities for the specified Auto Scaling group.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func describeScalingActivitiesPaginator<Result>(
        _ input: DescribeScalingActivitiesType,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ActivitiesType, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeScalingActivities,
            tokenKey: \ActivitiesType.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func describeScalingActivitiesPaginator(
        _ input: DescribeScalingActivitiesType,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ActivitiesType, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeScalingActivities,
            tokenKey: \ActivitiesType.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Describes the actions scheduled for your Auto Scaling group that haven't run or that have not reached their end time. To describe the actions that have already run, call the DescribeScalingActivities API.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func describeScheduledActionsPaginator<Result>(
        _ input: DescribeScheduledActionsType,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ScheduledActionsType, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeScheduledActions,
            tokenKey: \ScheduledActionsType.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func describeScheduledActionsPaginator(
        _ input: DescribeScheduledActionsType,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ScheduledActionsType, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeScheduledActions,
            tokenKey: \ScheduledActionsType.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Describes the specified tags. You can use filters to limit the results. For example, you can query for the tags for a specific Auto Scaling group. You can specify multiple values for a filter. A tag must match at least one of the specified values for it to be included in the results. You can also specify multiple filters. The result includes information for a particular tag only if it matches all the filters. If there's no match, no special message is returned. For more information, see Tagging Auto Scaling Groups and Instances in the Amazon EC2 Auto Scaling User Guide.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func describeTagsPaginator<Result>(
        _ input: DescribeTagsType,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, TagsType, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeTags,
            tokenKey: \TagsType.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func describeTagsPaginator(
        _ input: DescribeTagsType,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (TagsType, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeTags,
            tokenKey: \TagsType.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension AutoScaling.AutoScalingGroupNamesType: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AutoScaling.AutoScalingGroupNamesType {
        return .init(
            autoScalingGroupNames: self.autoScalingGroupNames,
            maxRecords: self.maxRecords,
            nextToken: token
        )
    }
}

extension AutoScaling.DescribeAutoScalingInstancesType: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AutoScaling.DescribeAutoScalingInstancesType {
        return .init(
            instanceIds: self.instanceIds,
            maxRecords: self.maxRecords,
            nextToken: token
        )
    }
}

extension AutoScaling.LaunchConfigurationNamesType: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AutoScaling.LaunchConfigurationNamesType {
        return .init(
            launchConfigurationNames: self.launchConfigurationNames,
            maxRecords: self.maxRecords,
            nextToken: token
        )
    }
}

extension AutoScaling.DescribeNotificationConfigurationsType: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AutoScaling.DescribeNotificationConfigurationsType {
        return .init(
            autoScalingGroupNames: self.autoScalingGroupNames,
            maxRecords: self.maxRecords,
            nextToken: token
        )
    }
}

extension AutoScaling.DescribePoliciesType: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AutoScaling.DescribePoliciesType {
        return .init(
            autoScalingGroupName: self.autoScalingGroupName,
            maxRecords: self.maxRecords,
            nextToken: token,
            policyNames: self.policyNames,
            policyTypes: self.policyTypes
        )
    }
}

extension AutoScaling.DescribeScalingActivitiesType: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AutoScaling.DescribeScalingActivitiesType {
        return .init(
            activityIds: self.activityIds,
            autoScalingGroupName: self.autoScalingGroupName,
            maxRecords: self.maxRecords,
            nextToken: token
        )
    }
}

extension AutoScaling.DescribeScheduledActionsType: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AutoScaling.DescribeScheduledActionsType {
        return .init(
            autoScalingGroupName: self.autoScalingGroupName,
            endTime: self.endTime,
            maxRecords: self.maxRecords,
            nextToken: token,
            scheduledActionNames: self.scheduledActionNames,
            startTime: self.startTime
        )
    }
}

extension AutoScaling.DescribeTagsType: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AutoScaling.DescribeTagsType {
        return .init(
            filters: self.filters,
            maxRecords: self.maxRecords,
            nextToken: token
        )
    }
}