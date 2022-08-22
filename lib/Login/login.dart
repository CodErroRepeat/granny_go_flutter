

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:granny_go/GridDashboard/cards_design.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);


TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

// This widget is the root of your application.
@override
Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(
      title: Text(
          "Login Page",
    ),

  ),
    body:

    Column(
      children: [
        Container(
          height: 150.0,
          width: 190.0,
          padding: EdgeInsets.only(top: 40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
          ),
          child: Center(
            child: Image.asset('Granny_go.png'),
          ),
        ),
        Text("Granny Go",
          style: TextStyle(
              color: Colors.blue,
              fontSize: 40,
            fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            controller: emailController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter valid mail id as abc@gmail.com'
              )
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            controller: passwordController,
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
              validateUser(context, emailController.text, passwordController.text);
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

void validateUser(BuildContext context, String email, String password) {

  if (!email.isValidEmail()) {
    showAlert(context, "Invalid Email");
  } else if (password.isEmpty) {
    showAlert(context, "Invalid Password");
  } else {
    showLoader(context);
    Future.delayed(Duration(seconds: 5), () => Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(builder: (_) => MakeDashboardItems())));
  }
}

void showLoader(BuildContext context) {
  const spinkit = SpinKitPouringHourGlassRefined(
    color: Colors.white,
    size: 50.0,
  );
  showDialog(
    context: context,
    builder: (_) => spinkit,
  );
}
void showAlert(BuildContext context, String message) {
  bool isAlertVisible = true;
  CupertinoAlertDialog dialog = CupertinoAlertDialog(
    title: Text("Error!"),
    content: Text(message),
  );
  showDialog(
    context: context,
    builder: (_) => dialog,
  );

  // Future.delayed(Duration(seconds: 5), () => Navigator.of(context, rootNavigator: true).pop());
}
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}