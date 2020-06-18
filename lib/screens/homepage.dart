import 'package:flutter/material.dart';
import 'package:loginsignupnode/provider/auth_provider.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {

  String _email,_password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Email',
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: (val){
                  _email = val;
                },
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter password',
                ),
                keyboardType: TextInputType.text,
                obscureText: true,
                onChanged: (val){
                  _password = val;
                },
              ),
              RaisedButton(
                color: Colors.blue.shade700,
                child: Text('Press Me'),
                onPressed: (){
                  Provider.of<AuthProvider>(context,listen: false).signupUser(_email, _password);
                },
              ),
            ],
          ),
        ),
      ),

    );
  }
}
