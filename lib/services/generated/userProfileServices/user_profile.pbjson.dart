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
    const {'1': 'user_id', '3': 8, '4': 1, '5': 9, '10': 'userId'},
    const {
      '1': 'password',
      '3': 9,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'password',
    },
  ],
};

/// Descriptor for `UserProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userProfileDescriptor = $convert.base64Decode('CgtVc2VyUHJvZmlsZRIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVlbWFpbBgDIAEoCVIFZW1haWwSFAoFcGhvbmUYBCABKAlSBXBob25lEhgKB2FkZHJlc3MYBSABKAlSB2FkZHJlc3MSHgoKaXNWZXJpZmllZBgGIAEoCFIKaXNWZXJpZmllZBIUCgVyb2xlcxgHIAMoCVIFcm9sZXMSFwoHdXNlcl9pZBgIIAEoCVIGdXNlcklkEh4KCHBhc3N3b3JkGAkgASgJQgIYAVIIcGFzc3dvcmQ=');
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
    const {'1': 'user_id', '3': 8, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `CreateUserProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserProfileDescriptor = $convert.base64Decode('ChFDcmVhdGVVc2VyUHJvZmlsZRISCgRuYW1lGAEgASgJUgRuYW1lEhQKBWVtYWlsGAIgASgJUgVlbWFpbBIUCgVwaG9uZRgDIAEoCVIFcGhvbmUSGAoHYWRkcmVzcxgEIAEoCVIHYWRkcmVzcxIeCgppc1ZlcmlmaWVkGAUgASgIUgppc1ZlcmlmaWVkEhoKCHBhc3N3b3JkGAYgASgJUghwYXNzd29yZBIUCgVyb2xlcxgHIAMoCVIFcm9sZXMSFwoHdXNlcl9pZBgIIAEoCVIGdXNlcklk');
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
@$core.Deprecated('Use loginPasswordDescriptor instead')
const LoginPassword$json = const {
  '1': 'LoginPassword',
  '2': const [
    const {'1': 'password', '3': 1, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginPassword`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginPasswordDescriptor = $convert.base64Decode('Cg1Mb2dpblBhc3N3b3JkEhoKCHBhc3N3b3JkGAEgASgJUghwYXNzd29yZA==');
@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = const {
  '1': 'LoginResponse',
  '2': const [
    const {'1': 'userProfile', '3': 1, '4': 1, '5': 11, '6': '.userProfile.UserProfile', '10': 'userProfile'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode('Cg1Mb2dpblJlc3BvbnNlEjoKC3VzZXJQcm9maWxlGAEgASgLMhgudXNlclByb2ZpbGUuVXNlclByb2ZpbGVSC3VzZXJQcm9maWxlEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2USFAoFdG9rZW4YAyABKAlSBXRva2Vu');
@$core.Deprecated('Use userProfileSelectorDescriptor instead')
const UserProfileSelector$json = const {
  '1': 'UserProfileSelector',
};

/// Descriptor for `UserProfileSelector`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userProfileSelectorDescriptor = $convert.base64Decode('ChNVc2VyUHJvZmlsZVNlbGVjdG9y');
@$core.Deprecated('Use userProfilesResponseDescriptor instead')
const UserProfilesResponse$json = const {
  '1': 'UserProfilesResponse',
  '2': const [
    const {'1': 'userProfile', '3': 1, '4': 3, '5': 11, '6': '.userProfile.UserProfile', '10': 'userProfile'},
  ],
};

/// Descriptor for `UserProfilesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userProfilesResponseDescriptor = $convert.base64Decode('ChRVc2VyUHJvZmlsZXNSZXNwb25zZRI6Cgt1c2VyUHJvZmlsZRgBIAMoCzIYLnVzZXJQcm9maWxlLlVzZXJQcm9maWxlUgt1c2VyUHJvZmlsZQ==');
