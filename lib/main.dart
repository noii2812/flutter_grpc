import 'package:flutter/material.dart';
import 'package:flutter_grpc/services/grpc_controller.dart';
import 'package:flutter_grpc/src/generated/userProfileServices/user_profile.pbgrpc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  userLogin() {
    UserProfileServiceClient userProfileServiceClient =
        UserProfileServiceClient(GRPCController.getgRPCClient());
    userProfileServiceClient
        .login(LoginRequest(email: "user01", password: "123"))
        .then((p0) => print(p0));
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width * 0.7,
              child: TextFormField(
                controller: emailController,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width * 0.7,
              child: TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
            ),
          ],
        ),
        TextButton(onPressed: () => userLogin(), child: const Text("Login"))
      ]),
    );
  }
}
