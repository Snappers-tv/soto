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

/// Error enum for SES
public struct SESErrorType: AWSErrorType {
    enum Code: String {
        case accountSendingPausedException = "AccountSendingPausedException"
        case alreadyExistsException = "AlreadyExists"
        case cannotDeleteException = "CannotDelete"
        case configurationSetAlreadyExistsException = "ConfigurationSetAlreadyExists"
        case configurationSetDoesNotExistException = "ConfigurationSetDoesNotExist"
        case configurationSetSendingPausedException = "ConfigurationSetSendingPausedException"
        case customVerificationEmailInvalidContentException = "CustomVerificationEmailInvalidContent"
        case customVerificationEmailTemplateAlreadyExistsException = "CustomVerificationEmailTemplateAlreadyExists"
        case customVerificationEmailTemplateDoesNotExistException = "CustomVerificationEmailTemplateDoesNotExist"
        case eventDestinationAlreadyExistsException = "EventDestinationAlreadyExists"
        case eventDestinationDoesNotExistException = "EventDestinationDoesNotExist"
        case fromEmailAddressNotVerifiedException = "FromEmailAddressNotVerified"
        case invalidCloudWatchDestinationException = "InvalidCloudWatchDestination"
        case invalidConfigurationSetException = "InvalidConfigurationSet"
        case invalidDeliveryOptionsException = "InvalidDeliveryOptions"
        case invalidFirehoseDestinationException = "InvalidFirehoseDestination"
        case invalidLambdaFunctionException = "InvalidLambdaFunction"
        case invalidPolicyException = "InvalidPolicy"
        case invalidRenderingParameterException = "InvalidRenderingParameter"
        case invalidS3ConfigurationException = "InvalidS3Configuration"
        case invalidSNSDestinationException = "InvalidSNSDestination"
        case invalidSnsTopicException = "InvalidSnsTopic"
        case invalidTemplateException = "InvalidTemplate"
        case invalidTrackingOptionsException = "InvalidTrackingOptions"
        case limitExceededException = "LimitExceeded"
        case mailFromDomainNotVerifiedException = "MailFromDomainNotVerifiedException"
        case messageRejected = "MessageRejected"
        case missingRenderingAttributeException = "MissingRenderingAttribute"
        case productionAccessNotGrantedException = "ProductionAccessNotGranted"
        case ruleDoesNotExistException = "RuleDoesNotExist"
        case ruleSetDoesNotExistException = "RuleSetDoesNotExist"
        case templateDoesNotExistException = "TemplateDoesNotExist"
        case trackingOptionsAlreadyExistsException = "TrackingOptionsAlreadyExistsException"
        case trackingOptionsDoesNotExistException = "TrackingOptionsDoesNotExistException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize SES
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// Indicates that email sending is disabled for your entire Amazon SES account. You can enable or disable email sending for your Amazon SES account using UpdateAccountSendingEnabled.
    public static var accountSendingPausedException: Self { .init(.accountSendingPausedException) }
    /// Indicates that a resource could not be created because of a naming conflict.
    public static var alreadyExistsException: Self { .init(.alreadyExistsException) }
    /// Indicates that the delete operation could not be completed.
    public static var cannotDeleteException: Self { .init(.cannotDeleteException) }
    /// Indicates that the configuration set could not be created because of a naming conflict.
    public static var configurationSetAlreadyExistsException: Self { .init(.configurationSetAlreadyExistsException) }
    /// Indicates that the configuration set does not exist.
    public static var configurationSetDoesNotExistException: Self { .init(.configurationSetDoesNotExistException) }
    /// Indicates that email sending is disabled for the configuration set. You can enable or disable email sending for a configuration set using UpdateConfigurationSetSendingEnabled.
    public static var configurationSetSendingPausedException: Self { .init(.configurationSetSendingPausedException) }
    /// Indicates that custom verification email template provided content is invalid.
    public static var customVerificationEmailInvalidContentException: Self { .init(.customVerificationEmailInvalidContentException) }
    /// Indicates that a custom verification email template with the name you specified already exists.
    public static var customVerificationEmailTemplateAlreadyExistsException: Self { .init(.customVerificationEmailTemplateAlreadyExistsException) }
    /// Indicates that a custom verification email template with the name you specified does not exist.
    public static var customVerificationEmailTemplateDoesNotExistException: Self { .init(.customVerificationEmailTemplateDoesNotExistException) }
    /// Indicates that the event destination could not be created because of a naming conflict.
    public static var eventDestinationAlreadyExistsException: Self { .init(.eventDestinationAlreadyExistsException) }
    /// Indicates that the event destination does not exist.
    public static var eventDestinationDoesNotExistException: Self { .init(.eventDestinationDoesNotExistException) }
    /// Indicates that the sender address specified for a custom verification email is not verified, and is therefore not eligible to send the custom verification email.
    public static var fromEmailAddressNotVerifiedException: Self { .init(.fromEmailAddressNotVerifiedException) }
    /// Indicates that the Amazon CloudWatch destination is invalid. See the error message for details.
    public static var invalidCloudWatchDestinationException: Self { .init(.invalidCloudWatchDestinationException) }
    /// Indicates that the configuration set is invalid. See the error message for details.
    public static var invalidConfigurationSetException: Self { .init(.invalidConfigurationSetException) }
    /// Indicates that provided delivery option is invalid.
    public static var invalidDeliveryOptionsException: Self { .init(.invalidDeliveryOptionsException) }
    /// Indicates that the Amazon Kinesis Firehose destination is invalid. See the error message for details.
    public static var invalidFirehoseDestinationException: Self { .init(.invalidFirehoseDestinationException) }
    /// Indicates that the provided AWS Lambda function is invalid, or that Amazon SES could not execute the provided function, possibly due to permissions issues. For information about giving permissions, see the Amazon SES Developer Guide.
    public static var invalidLambdaFunctionException: Self { .init(.invalidLambdaFunctionException) }
    /// Indicates that the provided policy is invalid. Check the error stack for more information about what caused the error.
    public static var invalidPolicyException: Self { .init(.invalidPolicyException) }
    /// Indicates that one or more of the replacement values you provided is invalid. This error may occur when the TemplateData object contains invalid JSON.
    public static var invalidRenderingParameterException: Self { .init(.invalidRenderingParameterException) }
    /// Indicates that the provided Amazon S3 bucket or AWS KMS encryption key is invalid, or that Amazon SES could not publish to the bucket, possibly due to permissions issues. For information about giving permissions, see the Amazon SES Developer Guide.
    public static var invalidS3ConfigurationException: Self { .init(.invalidS3ConfigurationException) }
    /// Indicates that the Amazon Simple Notification Service (Amazon SNS) destination is invalid. See the error message for details.
    public static var invalidSNSDestinationException: Self { .init(.invalidSNSDestinationException) }
    /// Indicates that the provided Amazon SNS topic is invalid, or that Amazon SES could not publish to the topic, possibly due to permissions issues. For information about giving permissions, see the Amazon SES Developer Guide.
    public static var invalidSnsTopicException: Self { .init(.invalidSnsTopicException) }
    /// Indicates that the template that you specified could not be rendered. This issue may occur when a template refers to a partial that does not exist.
    public static var invalidTemplateException: Self { .init(.invalidTemplateException) }
    /// Indicates that the custom domain to be used for open and click tracking redirects is invalid. This error appears most often in the following situations:   When the tracking domain you specified is not verified in Amazon SES.   When the tracking domain you specified is not a valid domain or subdomain.
    public static var invalidTrackingOptionsException: Self { .init(.invalidTrackingOptionsException) }
    /// Indicates that a resource could not be created because of service limits. For a list of Amazon SES limits, see the Amazon SES Developer Guide.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    ///  Indicates that the message could not be sent because Amazon SES could not read the MX record required to use the specified MAIL FROM domain. For information about editing the custom MAIL FROM domain settings for an identity, see the Amazon SES Developer Guide.
    public static var mailFromDomainNotVerifiedException: Self { .init(.mailFromDomainNotVerifiedException) }
    /// Indicates that the action failed, and the message could not be sent. Check the error stack for more information about what caused the error.
    public static var messageRejected: Self { .init(.messageRejected) }
    /// Indicates that one or more of the replacement values for the specified template was not specified. Ensure that the TemplateData object contains references to all of the replacement tags in the specified template.
    public static var missingRenderingAttributeException: Self { .init(.missingRenderingAttributeException) }
    /// Indicates that the account has not been granted production access.
    public static var productionAccessNotGrantedException: Self { .init(.productionAccessNotGrantedException) }
    /// Indicates that the provided receipt rule does not exist.
    public static var ruleDoesNotExistException: Self { .init(.ruleDoesNotExistException) }
    /// Indicates that the provided receipt rule set does not exist.
    public static var ruleSetDoesNotExistException: Self { .init(.ruleSetDoesNotExistException) }
    /// Indicates that the Template object you specified does not exist in your Amazon SES account.
    public static var templateDoesNotExistException: Self { .init(.templateDoesNotExistException) }
    /// Indicates that the configuration set you specified already contains a TrackingOptions object.
    public static var trackingOptionsAlreadyExistsException: Self { .init(.trackingOptionsAlreadyExistsException) }
    /// Indicates that the TrackingOptions object you specified does not exist.
    public static var trackingOptionsDoesNotExistException: Self { .init(.trackingOptionsDoesNotExistException) }
}

extension SESErrorType: Equatable {
    public static func == (lhs: SESErrorType, rhs: SESErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SESErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}