import 'package:flutter/material.dart';
import 'GridDashboard/cards_design.dart';
import 'Music/screens/main.widget.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:granny_go/Music/screens/main.widget.dart';
import 'package:granny_go/Music/style/main_colors.dart';
import 'i18n/i18n.dart';
import 'i18n/i18nDelegate.dart';
import 'package:flutter/services.dart';

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
      home:MainWidget(),
    );
  }
}

