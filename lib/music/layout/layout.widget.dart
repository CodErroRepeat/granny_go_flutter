import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:granny_go/music/style/app_sizes.dart';
import 'package:granny_go/music/style/main_colors.dart';
import 'package:granny_go/music/widget/app_bar.widget.dart';

class Layout extends StatelessWidget {
  final Widget child;
  final String title;
  final BuildContext context;

  const Layout(
      Key key, @required Widget this.child, @required String this.title, BuildContext this.context)
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSizes.loadAppSizes(context);
    return Scaffold(
      backgroundColor: MainColors.soundPageBackground,
      appBar: AppBar(
        title: Text("title"),
      ),
      body: child,
    );
  }
}
