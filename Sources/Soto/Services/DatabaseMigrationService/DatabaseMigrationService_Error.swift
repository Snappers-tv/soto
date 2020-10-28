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

/// Error enum for DatabaseMigrationService
public struct DatabaseMigrationServiceErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedFault = "AccessDeniedFault"
        case insufficientResourceCapacityFault = "InsufficientResourceCapacityFault"
        case invalidCertificateFault = "InvalidCertificateFault"
        case invalidResourceStateFault = "InvalidResourceStateFault"
        case invalidSubnet = "InvalidSubnet"
        case kMSAccessDeniedFault = "KMSAccessDeniedFault"
        case kMSDisabledFault = "KMSDisabledFault"
        case kMSFault = "KMSFault"
        case kMSInvalidStateFault = "KMSInvalidStateFault"
        case kMSKeyNotAccessibleFault = "KMSKeyNotAccessibleFault"
        case kMSNotFoundFault = "KMSNotFoundFault"
        case kMSThrottlingFault = "KMSThrottlingFault"
        case replicationSubnetGroupDoesNotCoverEnoughAZs = "ReplicationSubnetGroupDoesNotCoverEnoughAZs"
        case resourceAlreadyExistsFault = "ResourceAlreadyExistsFault"
        case resourceNotFoundFault = "ResourceNotFoundFault"
        case resourceQuotaExceededFault = "ResourceQuotaExceededFault"
        case s3AccessDeniedFault = "S3AccessDeniedFault"
        case s3ResourceNotFoundFault = "S3ResourceNotFoundFault"
        case sNSInvalidTopicFault = "SNSInvalidTopicFault"
        case sNSNoAuthorizationFault = "SNSNoAuthorizationFault"
        case storageQuotaExceededFault = "StorageQuotaExceededFault"
        case subnetAlreadyInUse = "SubnetAlreadyInUse"
        case upgradeDependencyFailureFault = "UpgradeDependencyFailureFault"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize DatabaseMigrationService
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

    /// AWS DMS was denied access to the endpoint. Check that the role is correctly configured.
    public static var accessDeniedFault: Self { .init(.accessDeniedFault) }
    /// There are not enough resources allocated to the database migration.
    public static var insufficientResourceCapacityFault: Self { .init(.insufficientResourceCapacityFault) }
    /// The certificate was not valid.
    public static var invalidCertificateFault: Self { .init(.invalidCertificateFault) }
    /// The resource is in a state that prevents it from being used for database migration.
    public static var invalidResourceStateFault: Self { .init(.invalidResourceStateFault) }
    /// The subnet provided is invalid.
    public static var invalidSubnet: Self { .init(.invalidSubnet) }
    /// The ciphertext references a key that doesn't exist or that the DMS account doesn't have access to.
    public static var kMSAccessDeniedFault: Self { .init(.kMSAccessDeniedFault) }
    /// The specified master key (CMK) isn't enabled.
    public static var kMSDisabledFault: Self { .init(.kMSDisabledFault) }
    /// An AWS Key Management Service (AWS KMS) error is preventing access to AWS KMS.
    public static var kMSFault: Self { .init(.kMSFault) }
    /// The state of the specified AWS KMS resource isn't valid for this request.
    public static var kMSInvalidStateFault: Self { .init(.kMSInvalidStateFault) }
    /// AWS DMS cannot access the AWS KMS key.
    public static var kMSKeyNotAccessibleFault: Self { .init(.kMSKeyNotAccessibleFault) }
    /// The specified AWS KMS entity or resource can't be found.
    public static var kMSNotFoundFault: Self { .init(.kMSNotFoundFault) }
    /// This request triggered AWS KMS request throttling.
    public static var kMSThrottlingFault: Self { .init(.kMSThrottlingFault) }
    /// The replication subnet group does not cover enough Availability Zones (AZs). Edit the replication subnet group and add more AZs.
    public static var replicationSubnetGroupDoesNotCoverEnoughAZs: Self { .init(.replicationSubnetGroupDoesNotCoverEnoughAZs) }
    /// The resource you are attempting to create already exists.
    public static var resourceAlreadyExistsFault: Self { .init(.resourceAlreadyExistsFault) }
    /// The resource could not be found.
    public static var resourceNotFoundFault: Self { .init(.resourceNotFoundFault) }
    /// The quota for this resource quota has been exceeded.
    public static var resourceQuotaExceededFault: Self { .init(.resourceQuotaExceededFault) }
    /// Insufficient privileges are preventing access to an Amazon S3 object.
    public static var s3AccessDeniedFault: Self { .init(.s3AccessDeniedFault) }
    /// A specified Amazon S3 bucket, bucket folder, or other object can't be found.
    public static var s3ResourceNotFoundFault: Self { .init(.s3ResourceNotFoundFault) }
    /// The SNS topic is invalid.
    public static var sNSInvalidTopicFault: Self { .init(.sNSInvalidTopicFault) }
    /// You are not authorized for the SNS subscription.
    public static var sNSNoAuthorizationFault: Self { .init(.sNSNoAuthorizationFault) }
    /// The storage quota has been exceeded.
    public static var storageQuotaExceededFault: Self { .init(.storageQuotaExceededFault) }
    /// The specified subnet is already in use.
    public static var subnetAlreadyInUse: Self { .init(.subnetAlreadyInUse) }
    /// An upgrade dependency is preventing the database migration.
    public static var upgradeDependencyFailureFault: Self { .init(.upgradeDependencyFailureFault) }
}

extension DatabaseMigrationServiceErrorType: Equatable {
    public static func == (lhs: DatabaseMigrationServiceErrorType, rhs: DatabaseMigrationServiceErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension DatabaseMigrationServiceErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}