import 'package:grpc/grpc.dart';

class GRPCController {
  static getgRPCClient() {
    var client = ClientChannel(ClientChannel(Uri.parse("192.168.0.168"),
        port: 9000,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));
    // print(client);
    return client;
  }
}
