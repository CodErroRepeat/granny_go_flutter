import 'package:flutter/cupertino.dart';
import 'package:granny_go/music/layout/layout.widget.dart';
import 'package:granny_go/music/screens/soundsListView.widget.dart';
import 'package:granny_go/music/store/main_store.dart';

class MainWidget extends StatelessWidget {
  final store = MainStore();

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: SoundsListView(
        store: store,
      ),
      title: "title",//title: I18n.getValue('title')
      context: context,
    );
  }
}
