///
//  Generated code. Do not modify.
//  source: user_profile.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userProfileDescriptor instead')
const UserProfile$json = const {
  '1': 'UserProfile',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'phone', '3': 4, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'address', '3': 5, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'isVerified', '3': 6, '4': 1, '5': 8, '10': 'isVerified'},
    const {'1': 'roles', '3': 7, '4': 3, '5': 9, '10': 'roles'},
    const {'1': 'userId', '3': 8, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `UserProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userProfileDescriptor = $convert.base64Decode('CgtVc2VyUHJvZmlsZRIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVlbWFpbBgDIAEoCVIFZW1haWwSFAoFcGhvbmUYBCABKAlSBXBob25lEhgKB2FkZHJlc3MYBSABKAlSB2FkZHJlc3MSHgoKaXNWZXJpZmllZBgGIAEoCFIKaXNWZXJpZmllZBIUCgVyb2xlcxgHIAMoCVIFcm9sZXMSFgoGdXNlcklkGAggASgJUgZ1c2VySWQ=');
@$core.Deprecated('Use createUserProfileDescriptor instead')
const CreateUserProfile$json = const {
  '1': 'CreateUserProfile',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'phone', '3': 3, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'address', '3': 4, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'isVerified', '3': 5, '4': 1, '5': 8, '10': 'isVerified'},
    const {'1': 'password', '3': 6, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'roles', '3': 7, '4': 3, '5': 9, '10': 'roles'},
    const {'1': 'userId', '3': 8, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `CreateUserProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserProfileDescriptor = $convert.base64Decode('ChFDcmVhdGVVc2VyUHJvZmlsZRISCgRuYW1lGAEgASgJUgRuYW1lEhQKBWVtYWlsGAIgASgJUgVlbWFpbBIUCgVwaG9uZRgDIAEoCVIFcGhvbmUSGAoHYWRkcmVzcxgEIAEoCVIHYWRkcmVzcxIeCgppc1ZlcmlmaWVkGAUgASgIUgppc1ZlcmlmaWVkEhoKCHBhc3N3b3JkGAYgASgJUghwYXNzd29yZBIUCgVyb2xlcxgHIAMoCVIFcm9sZXMSFgoGdXNlcklkGAggASgJUgZ1c2VySWQ=');
@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode('CgxMb2dpblJlcXVlc3QSFAoFZW1haWwYASABKAlSBWVtYWlsEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZA==');
