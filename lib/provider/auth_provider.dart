import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class AuthProvider with ChangeNotifier {
  String _userId;
  String _userEmail;
  String _userPassword;

  String get getUserId => _userId;

  String get getUserName => _userEmail;

  String get getUserPassword => _userPassword;

  Future<void> signupUser(String email, String password) async {
    final response = await http.post('http://localhost:3000/user/signup', headers: {
      "content-type": "application/x-www-form-urlencoded; charset=UTF-8",
    }, body: {
      'userEmail': email,
      'userPassword': password,
    });

    print(response.body);
  }

  Future<void> signinUser(String email, String password) async {
    final response =
        await http.post('http://localhost:3000/user/signin', headers: {
      "content-type": "application/x-www-form-urlencoded; charset=UTF-8",
    }, body: {
      'userEmail': email,
      'userPassword': password,
    });

    print(response.body);
  }
}






