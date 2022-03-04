import 'package:http/http.dart' as http;
import 'dart:convert';

class APIServices {
  Future<SignupApiResponse> userSignup(Map<String, dynamic> param) async {
    var BASE_URL = "https://evapi-nodejs.herokuapp.com";
    var SIGN_UP = BASE_URL + "/users/userSignup";
    var response = await http.post(Uri.parse(SIGN_UP), body: param);

    print('Response Status : ${response.statusCode}');
    print('Response Body : ${response.body}');

    final data = jsonDecode(response.body);
    return SignupApiResponse(token: data["token"], error: data["error"]);
  }

  Future<LoginApiResponse> login(Map<String, dynamic> param) async {
    var BASE_URL = "https://evapi-nodejs.herokuapp.com";
    var SIGN_UP = BASE_URL + "/users/login";
    var response = await http.post(Uri.parse(SIGN_UP), body: param);

    print('Response Status : ${response.statusCode}');
    print('Response Body : ${response.body}');

    final data = jsonDecode(response.body);
    return LoginApiResponse(token: data["token"], error: data["error"]);
  }
}

class SignupApiResponse {
  final String? token;
  final String? error;
  SignupApiResponse({this.token, this.error});
}


class LoginApiResponse {
  final String? token;
  final String? error;
  LoginApiResponse({this.token, this.error});
}