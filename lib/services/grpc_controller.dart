import 'package:grpc/grpc.dart';

class GRPCController {
  static getgRPCClient() {
    var client = ClientChannel("192.168.0.166",
        port: 9000,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    // print(client);
    return client;
  }
}
