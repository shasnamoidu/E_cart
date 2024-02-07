import 'package:intl/intl.dart';

class Formatterr{
  static String formatDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat('dd-mm-yyyy').format(date);  //customize the date format as neede
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber){
    //assuming a 10 digit us phone number format: (123) 456-7892
    if(phoneNumber.length == 10){
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    }else if(phoneNumber.length == 11){
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }

  //not fully tested
  static String internationalFormatPhoneNumber(String phoneNumber){
    //remove any no digit phone characters from the phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    //extract the country code  from the digitsonly
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    //add the remaining digits with the proper formatting
    final formatedNumber = StringBuffer();
    formatedNumber.write('($countryCode)');

    int i=0;
    while(i < digitsOnly.length){
      int groupLenth =2;
      if(i == 0 && countryCode == '+1'){
        groupLenth = 3;
      }

      int end = i + groupLenth;
      formatedNumber.write(digitsOnly.substring(i, end));

      if(end < digitsOnly.length){
        formatedNumber.write(' ');
      }
       i = end;
    }
    return formatedNumber.toString();
  }
  
}