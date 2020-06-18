import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/homepage.dart';
import './provider/auth_provider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
    value: AuthProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(


          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
      ),
    );
  }
}

