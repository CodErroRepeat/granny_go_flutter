import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:granny_go/tips/tipsdatamodel.dart';
import 'package:granny_go/tips/tipsdetails.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  List<TipsDataModel> _tips = [];
  // static List<String> tipsname =['Alzheimer','Amnesia','Dementia','Anxiety','Depression','Cardio Tips','Hypertension','Diabetes'];
  // static List url = ['assets/about/alzheimer.png',
  //   'assets/about/amnesia.png',
  //   'assets/about/dementia.png',
  //   'assets/about/anxiety.png',
  //   'assets/about/depression.png','assets/tipsimg/cardio.png','assets/about/hypertension.png','assets/tipsimg/diabetes.png',];
  // static List tipsdatamodel=[TipsDataModel('ALZHEIMER','assets/about/alzheimer.png',"  A progressive disease that destroys memory and other important mental functions.Brain cell connections and the cells themselves degenerate and die, eventually destroying memory and other important mental functions.Memory loss and confusion are the main symptoms.No cure exists, but medication and management strategies may temporarily improve symptoms."),
  //   TipsDataModel("AMNESIA",'assets/about/amnesia.png',"Inability to remember events for a period of time, often due to brain injury, illness or the effects of drugs or alcohol."),
  //   TipsDataModel("DEMENTIA",'assets/about/dementia.png',"A group of thinking and social symptoms that interferes with daily functioning Not a specific disease, dementia is a group of conditions characterised by impairment of at least two brain functions, such as memory loss and judgement.Symptoms include forgetfulness, limited social skills and thinking abilities so impaired that it interferes with daily functioning.Medication and therapies may help manage symptoms. Some causes are reversible."),
  //   TipsDataModel("ANXIETY",'assets/about/anxiety.png',"Anxiety can be normal in stressful situations such as public speaking or taking a test. Anxiety is only an indicator of underlying disease when feelings become excessive, all-consuming and interfere with daily living."),
  //   TipsDataModel("DEPRESSION",'assets/about/depression.png',"A group of conditions associated with the elevation or lowering of a person's mood, such as depression or bipolar disorder"),
  //   TipsDataModel("CARDIOTIPS ",'assets/about/cardio.png',"Heart conditions that include diseased vessels, structural problems and blood clots."),
  //   TipsDataModel("HYPERTENSION",'assets/about/hypertension.png',"Hypertension is when blood pressure is too high. Blood pressure is written as two numbers. The first (systolic) number represents the pressure in blood vessels when the heart contracts or beats. The second (diastolic) number represents the pressure in the vessels when the heart rests between beats"),
  //   TipsDataModel("DIABETES",'assets/about/diabetes.png',"Diabetes-Diabetes mellitus, commonly referred to simply as diabetes, is a metabolic disease that causes high blood sugar")];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readJson();
  }

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/jsonData/tips.json');
    final List<dynamic>data = jsonDecode(response)["tips"];

    setState(() {
      _tips = data.map((e) => TipsDataModel.fromJson(e)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('HEALTH TIPS'),),
        body: ListView.builder(
            itemCount: _tips.length,
            itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  title: Text(_tips[index].name),
                  leading: SizedBox(
                    width: 50,
                    height: 90,
                    child: Image.asset(_tips[index].ImageUrl),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TipsDetail(tipsDataModel:_tips[index],)));
                  },
                ),
              );
            }
        )
    );
  }
}


