import 'package:flutter/material.dart';
import 'package:granny_go/games/tictactoe/game_page.dart';
import 'package:granny_go/Recipe/explore.dart';
import 'package:granny_go/games/games_card_design.dart';
import 'package:granny_go/tips/tipsmain.dart';
class MakeDashboardItems extends StatefulWidget {
  const MakeDashboardItems({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MakeDashboardItemsState createState() => _MakeDashboardItemsState();
}

class DashboardItem {
  // String id;
  String title;
  String img;

  DashboardItem(this.title, this.img);
}

// ignore: non_constant_identifier_names
Card DashboardView(DashboardItem item, VoidCallback action) {
  return Card(
    elevation: 2,
    margin: const EdgeInsets.all(8),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: const LinearGradient(
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(3.0, -1.0),
          colors: [
            Color(0xFF84fcde),
            Color(0xFFffffff),
          ],
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            blurRadius: 3,
            offset: Offset(2, 2),
          )
        ],
      ),
      child: InkWell(
        onTap: () {
          action();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: [
            const SizedBox(height: 50),
            Center(
              child: Image.asset(
                item.img,
                height: 50,
                width: 50,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                item.title,
                style: const TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    ),
  );
}

class _MakeDashboardItemsState extends State<MakeDashboardItems> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 170, 193, 232),
      body: Column(
        children: [
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "GRANNY GO",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Dashboard:",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(2),
              children: [
                DashboardView(DashboardItem("Games", "assets/about/games.png"), () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MakeGameDashboardItems()));
                }),
                DashboardView(DashboardItem("Music", "assets/about/music.png"), () {
                  //Music page
                }),
                DashboardView(DashboardItem("Recipes", "assets/about/recipes.png"), () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Explore()));
                }),
                DashboardView(DashboardItem("Tips", "assets/about/tips.png"), () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MyHomePage()));
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
