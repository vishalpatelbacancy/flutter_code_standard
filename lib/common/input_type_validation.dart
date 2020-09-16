String validateEmail(String value) {
  if (value.length > 3) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (value.isEmpty)
      return 'Email is required';
    else if (!regex.hasMatch(value))
      return 'Valid email is required';
    else
      return null;
  } else
    return 'Please enter email';
}

String validatePassword(String value) {
  if (value.isEmpty) {
    return "Please enter password";
  }
  return null;
}

String validateMobile(String value) {
  if (value.isEmpty) return 'Mobile number is required';
  if (value.length < 10)
    return 'Mobile Number must be of 10 digit';
  else
    return null;
}
