import 'package:flutter/material.dart';
import 'package:flutter_grpc/controller/login_form_validate.dart';
import 'package:flutter_grpc/repository/user_respoitory.dart';
import 'package:flutter_grpc/services/generated/userProfileServices/user_profile.pbgrpc.dart';
import 'package:flutter_grpc/services/grpc_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const LoginScreen(),
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

  // BehaviorSubject<bool> subjectEmailController = BehaviorSubject<bool>();
  // BehaviorSubject<bool> subjectPasswordController = BehaviorSubject<bool>();

  validateEmail(String? email) {
    if (email!.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  validatePassword(String? password) {
    if (password!.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  // handleValidateButtonSubmit() {
  //   return Rx.combineLatest2(subjectEmailController, subjectPasswordController,
  //       (a, b) {
  //     if (a == true && b == true) {
  //       return true;
  //     } else {
  //       return false;
  //     }
  //   });
  // }

  final _formKey = GlobalKey<FormState>();

  userLogin({String? email, String? password}) {
    UserProfileServiceClient userProfileServiceClient =
        UserProfileServiceClient(GRPCController.getgRPCClient());
    userProfileServiceClient
        .login(LoginRequest(email: email, password: password))
        .then((p0) {
      print(p0);
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * 0.8,
                child: StreamBuilder<bool>(
                    stream: LoginFormValidate.subjectEmailController,
                    builder: (context, snapshot) {
                      return TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (String? val) {
                          if (snapshot.data!) {
                            return null;
                          } else {
                            return "required";
                          }
                          // if (snapshot.data == true) {
                          //   print(true);
                          //   return "required";
                          // } else {
                          //   print(false);
                          //   return null;
                          // }
                        },
                        onChanged: (val) {
                          LoginFormValidate.updateEmailStream(val);
                        },
                        controller: emailController,
                        decoration: const InputDecoration(
                            labelText: "Email", border: OutlineInputBorder()),
                      );
                    }),
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
                width: size.width * 0.8,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: passwordController,
                  validator: (val) {
                    if (LoginFormValidate.subjectPasswordController.value) {
                      return null;
                    } else {
                      return "required";
                    }
                    // if (subjectPasswordController.hasValue) {
                    //   if (val == "") {
                    //     subjectPasswordController.add(val == "");
                    //     return "Required";
                    //   } else if (val!.length < 6) {
                    //     subjectPasswordController.add(val.length < 6);
                    //     return "Invalid";
                    //   }
                    // }
                  },
                  onChanged: (password) {
                    LoginFormValidate.updatePasswordStream(password);
                  },
                  decoration: const InputDecoration(
                      labelText: "Password", border: OutlineInputBorder()),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          StreamBuilder<bool>(
              stream: LoginFormValidate.validateButtonSubmit(),
              builder: (context, snapshot) {
                return ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.resolveWith(
                          (states) => Size.fromWidth(size.width * 0.8)),
                      // backgroundColor: MaterialStateProperty.resolveWith(
                      //     (states) => Theme.of(context).primaryColor
                      // )
                    ),
                    onPressed: () async {
                      // print(1);
                      var result = await UserServices().login(
                          email: emailController.text,
                          password: passwordController.text);
                      // print(result);
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.blue),
                    ));
              })
        ]),
      ),
    );
  }
}
