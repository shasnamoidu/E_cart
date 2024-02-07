import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpHelperr{
  static const String _baseUrl = '';   //replace your url

  //helper method to get a GET request
  static Future <Map<String, dynamic>> get(String endpoint) async{
    final Response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(Response);
  }

  //helper method to get a POST request
  static Future <Map<String, dynamic>> post(String endpoint, dynamic data) async{
    final Response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'content-Type':'application/json'},
    );
    return _handleResponse(Response);
  }

  //helper method to get a PUT request
  static Future <Map<String, dynamic>> put(String endpoint, dynamic data) async{
    final Response = await http.put(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'content-Type':'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(Response);
  }

  //helper method to get a DELETE request
  static Future <Map<String, dynamic>> delete(String endpoint, dynamic data) async{
    final Response = await http.delete(
      Uri.parse('$_baseUrl/$endpoint'),
    );
    return _handleResponse(Response);
  }

  //handle the HTTP response
  static  Map<String, dynamic> _handleResponse(http.Response response){
    if(response.statusCode == 200){
      return json.decode(response.body);
    }
    else{
      throw Exception('failed to load data: ${response.statusCode}');
    }
  }
  
}