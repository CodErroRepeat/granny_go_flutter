import 'package:flutter/cupertino.dart';
import 'package:granny_go/music/layout/layout.widget.dart';
import 'package:granny_go/music/screens/soundsListView.widget.dart';
import 'package:granny_go/music/store/main_store.dart';

class MusicWidget extends StatelessWidget {
  final store = MainStore();
  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Layout(_formKey, SoundsListView(_formKey, store), "title", context);
  }
}
