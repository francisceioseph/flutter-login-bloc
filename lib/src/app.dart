import 'package:flutter/material.dart';
import './screens/login_screen.dart';
import './blocs/provider.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return Provider(
      child: MaterialApp(
        title: 'Log Me In',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Log Me In!'),
          ),
          body: Center(
            child: LoginScreen(),
          ),
        ),
      ),
    );
  }
}
