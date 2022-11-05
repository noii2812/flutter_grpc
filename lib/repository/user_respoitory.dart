import 'package:flutter_grpc/helpers/grpc_response.dart';
import 'package:flutter_grpc/services/generated/userProfileServices/user_profile.pbgrpc.dart';
import 'package:flutter_grpc/services/grpc_controller.dart';

abstract class IUserRepository {
  Future? login({required String email, required String password});
  Stream<UserProfilesResponse> getAllUsers();
}

class UserServices implements IUserRepository {
  UserProfileServiceClient userProfileServiceClient =
      UserProfileServiceClient(GRPCController.getgRPCClient());

  @override
  Future? login({required String email, required String password}) async {
    GRPCResult grpcResult = GRPCResult();
    try {
      Future<LoginResponse> userLogin = userProfileServiceClient
          .login(LoginRequest(email: email, password: password));
      var res = await grpcResult.getResponse(userLogin);
      // print(res.data);
      print(res.data.runtimeType);

      // print(res.data);
      return res;
      // if (!respose.hasUserProfile()) {
      //   return respose.userProfile;
      // }
      // return respose;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Stream<UserProfilesResponse> getAllUsers() async* {
    userProfileServiceClient.getAllUsers(UserProfileSelector()).listen((value) {
      print(value);
    });
  }
}
