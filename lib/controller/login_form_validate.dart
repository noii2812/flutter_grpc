import 'package:rxdart/rxdart.dart';

class LoginFormValidate {
  static BehaviorSubject<bool> subjectEmailController = BehaviorSubject<bool>()
    ..value = false;
  static BehaviorSubject<bool> subjectPasswordController =
      BehaviorSubject<bool>();

  static validateEmail(String? email) {
    if (email!.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  static validatePassword(String? password) {
    if (password!.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  static updateEmailStream(email) =>
      subjectEmailController.add(validateEmail(email));
  static updatePasswordStream(password) =>
      subjectPasswordController.add(validatePassword(password));

  static validateButtonSubmit() {
    return Rx.combineLatest2(subjectEmailController, subjectPasswordController,
        (a, b) {
      if (a == true && b == true) {
        return true;
      } else {
        return false;
      }
    });
  }
}
