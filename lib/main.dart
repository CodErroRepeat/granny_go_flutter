import 'package:flutter/material.dart';
import 'GridDashboard/cards_design.dart';
import 'games/match/MatchGamePage.dart';

<<<<<<< Updated upstream
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}
=======
Future<void> main() async => runApp(const MyApp());
>>>>>>> Stashed changes

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
<<<<<<< Updated upstream
      home:MakeDashboardItems(),
=======
      home: MatchGamePage(),
>>>>>>> Stashed changes
    );
  }
}
