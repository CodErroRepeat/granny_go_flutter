import 'package:flutter/material.dart';
import 'package:granny_go/tips/tipsdatamodel.dart';
import 'package:granny_go/tips/tipsdetails.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  static List<String> tipsname =['Alzheimer','Amnesia','Dementia','Anxiety','Depression','Cardio Tips','Hypertension','Diabetes'];
  static List url = ['assets/tipsimg/alzheimer.png',
    'assets/tipsimg/amnesia.png',
    'assets/tipsimg/dementia.png',
    'assets/tipsimg/anxiety.png',
    'assets/tipsimg/depression.png','assets/tipsimg/cardio.png','assets/tipsimg/hypertension.png','assets/tipsimg/diabetes.png',];
  static List tipsdatamodel=[TipsDataModel('ALZHEIMER','assets/tipsimg/alzheimer.png',"  A progressive disease that destroys memory and other important mental functions.Brain cell connections and the cells themselves degenerate and die, eventually destroying memory and other important mental functions.Memory loss and confusion are the main symptoms.No cure exists, but medication and management strategies may temporarily improve symptoms."),
    TipsDataModel("AMNESIA",'assets/tipsimg/amnesia.png',"Inability to remember events for a period of time, often due to brain injury, illness or the effects of drugs or alcohol."),
    TipsDataModel("DEMENTIA",'assets/tipsimg/dementia.png',"A group of thinking and social symptoms that interferes with daily functioning Not a specific disease, dementia is a group of conditions characterised by impairment of at least two brain functions, such as memory loss and judgement.Symptoms include forgetfulness, limited social skills and thinking abilities so impaired that it interferes with daily functioning.Medication and therapies may help manage symptoms. Some causes are reversible."),
    TipsDataModel("ANXIETY",'assets/tipsimg/anxiety.png',"Anxiety can be normal in stressful situations such as public speaking or taking a test. Anxiety is only an indicator of underlying disease when feelings become excessive, all-consuming and interfere with daily living."),
    TipsDataModel("DEPRESSION",'assets/tipsimg/depression.png',"A group of conditions associated with the elevation or lowering of a person's mood, such as depression or bipolar disorder"),
    TipsDataModel("CARDIOTIPS ",'assets/tipsimg/cardio.png',"Heart conditions that include diseased vessels, structural problems and blood clots."),
    TipsDataModel("HYPERTENSION",'assets/tipsimg/hypertension.png',"Hypertension is when blood pressure is too high. Blood pressure is written as two numbers. The first (systolic) number represents the pressure in blood vessels when the heart contracts or beats. The second (diastolic) number represents the pressure in the vessels when the heart rests between beats"),
    TipsDataModel("DIABETES",'assets/tipsimg/diabetes.png',"Diabetes-Diabetes mellitus, commonly referred to simply as diabetes, is a metabolic disease that causes high blood sugar")];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('HEALTH TIPS'),),
        body: ListView.builder(
            itemCount: tipsdatamodel.length,
            itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  title: Text(tipsdatamodel[index].name),
                  leading: SizedBox(
                    width: 50,
                    height: 90,
                    child: Image.network(tipsdatamodel[index].ImageUrl),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TipsDetail(tipsDataModel:tipsdatamodel[index],)));
                  },
                ),
              );
            }
        )
    );
  }
}


