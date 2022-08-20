

import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
const LoginView({Key? key}) : super(key: key);

// This widget is the root of your application.
@override
Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(
      title: Text('Login Page'),
  ),
    body: Column(
      children: [
        Container(
          height: 150.0,
          width: 190.0,
          padding: EdgeInsets.only(top: 40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
          ),
          child: Center(
            child: Image.asset('asset/images/flutter-logo.png'),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
                hintText: 'Enter valid mail id as abc@gmail.com'
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter your secure password'
            ),
          ),
        ),
        FlatButton(
          onPressed: (){
            //TODO FORGOT PASSWORD SCREEN GOES HERE
          },
          child: Text(
            'Forgot Password',
            style: TextStyle(color: Colors.blue, fontSize: 15),
          ),
        ),
        Container(
          height: 50,
          width: 250,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          child: FlatButton(
            onPressed: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (_) => ()));
            },
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Text('New User? Create Account')
      ],
    ),
  );
}
}