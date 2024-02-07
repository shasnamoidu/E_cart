class Validatorr{
  static String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return 'Email is required';
    }

    //regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if(!emailRegExp.hasMatch(value)){
      return 'invalid email address';
    }
    return null;
  }

  static String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return 'password is required';
    }

    //check for min password length
  
    if(value.length < 6){
      return 'password must be  at least 6 character long';
    }

    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'password must be  contain at least  one uppercase letter';
  }
  if(!value.contains(RegExp(r'[0-9]'))){
      return 'password must contain at least one number';
  }
  
  if(!value.contains(RegExp(r'[!@#$%^&*(),.?"{}|<>]'))){
      return 'password must contain at least one special character';
  }
  return null;
  }

  static String? validatePhonenumber(String? value){
    if(value == null || value.isEmpty){
      return 'phone number is required';
    }
    final phoneRegExp = RegExp(r'*\d{10}$');
    if(!phoneRegExp.hasMatch(value)){
      return 'invalid phone number format (10 digit required)';
    }
    return null;
  }
}