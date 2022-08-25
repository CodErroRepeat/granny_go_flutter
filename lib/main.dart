import 'package:flutter/material.dart';
import 'package:granny_go/home_quiz/quiz_screen.dart';
import 'package:granny_go/tips/tipsdatamodel.dart';
import 'package:granny_go/tips/tipsdetails.dart';
import 'GridDashboard/cards_design.dart';
import 'games/chess/chessGamePage.dart';
import 'Login/login.dart';
import 'package:flutter/services.dart';
import 'GridDashboard/cards_design.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MakeDashboardItems(),
    );
  }
}
