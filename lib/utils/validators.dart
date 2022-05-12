class Validators {
  static String? emailValidator(String? email) {
    Pattern emailPattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    return RegExp(emailPattern as String).hasMatch(email!)
        ? null
        : "Please use a valid email address";
  }

  static String? passwordValidator(String? value) {
    return value!.length > 4 ? null : "Try one with minimum 5 characters";
  }

  static String? nameValidator(String? value) {
    if (value!.isEmpty) {
      return 'This field is required';
    } else {
      return null;
    }
  }
}
