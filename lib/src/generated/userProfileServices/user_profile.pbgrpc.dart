///
//  Generated code. Do not modify.
//  source: user_profile.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user_profile.pb.dart' as $0;
export 'user_profile.pb.dart';

class UserProfileServiceClient extends $grpc.Client {
  static final _$createUser =
      $grpc.ClientMethod<$0.CreateUserProfile, $0.UserProfile>(
          '/userProfile.UserProfileService/CreateUser',
          ($0.CreateUserProfile value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UserProfile.fromBuffer(value));
  static final _$login = $grpc.ClientMethod<$0.LoginRequest, $0.UserProfile>(
      '/userProfile.UserProfileService/Login',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserProfile.fromBuffer(value));

  UserProfileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.UserProfile> createUser($0.CreateUserProfile request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserProfile> login($0.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }
}

abstract class UserProfileServiceBase extends $grpc.Service {
  $core.String get $name => 'userProfile.UserProfileService';

  UserProfileServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateUserProfile, $0.UserProfile>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateUserProfile.fromBuffer(value),
        ($0.UserProfile value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.UserProfile>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.UserProfile value) => value.writeToBuffer()));
  }

  $async.Future<$0.UserProfile> createUser_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateUserProfile> request) async {
    return createUser(call, await request);
  }

  $async.Future<$0.UserProfile> login_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.UserProfile> createUser(
      $grpc.ServiceCall call, $0.CreateUserProfile request);
  $async.Future<$0.UserProfile> login(
      $grpc.ServiceCall call, $0.LoginRequest request);
}
