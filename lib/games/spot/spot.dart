import 'dart:io';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(NewApp());
}

class NewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(title: 'My App', home: SpotGame());
  }
}

class SpotGame extends StatefulWidget {
  @override
  SpotGameState createState() => SpotGameState();
}

class SpotGameState extends State<SpotGame> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.

    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WebView(
      initialUrl: 'https://gamesnacks.com/embed/games/findthedifference',
    );
  }
}

// @override
// Widget build(BuildContext context) {
//   return WebView(
//     initialUrl: 'https://gamesnacks.com/embed/games/findthedifference',
//   );
// }
