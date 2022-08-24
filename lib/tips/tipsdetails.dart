import 'package:flutter/material.dart';
import 'tipsdatamodel.dart';

class TipsDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(tipsDataModel.name),),
      body: Column(
        children: <Widget>[
          Text(tipsDataModel.name+"-INTRO\n",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold,decoration: TextDecoration.underline),),
          Text("Description\n",style:TextStyle(fontSize: 15,fontWeight:FontWeight.bold,decoration: TextDecoration.underline),),
          Container(
            child: Text(tipsDataModel.desc)
          )
        ],
      ),
    );
  }

  final TipsDataModel tipsDataModel;

  const TipsDetail({Key? key, required this.tipsDataModel}) : super(key: key);
}