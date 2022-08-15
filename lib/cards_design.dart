import 'package:flutter/material.dart';

class MakeDashboardItems extends StatefulWidget {
  const MakeDashboardItems({Key? key}) : super(key: key);

  @override
  _MakeDashboardItemsState createState() => _MakeDashboardItemsState();
}

class _MakeDashboardItemsState extends State<MakeDashboardItems> {
  Card makeDashboardItem(String title, String img, int index) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(8),
      child: Container(
        decoration: index == 0 || index == 3 || index == 4
            ? BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(3.0, -1.0),
            colors: [
              Color(0xFFffffff),
              Color(0xFFffffff),
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 3,
              offset: Offset(2, 2),
            )
          ],
        )
            : BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(3.0, -1.0),
            colors: [
              Colors.white,
              Color(0xFFffffff),
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 3,
              offset: Offset(2, 2),
            )
          ],
        ),
        child: InkWell(
          onTap: () {
            if (index == 0) {
              //1.item
            }
            if (index == 1) {
              //2.item
            }
            if (index == 2) {
              //3.item
            }
            if (index == 3) {
              //4.item
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: [
              const SizedBox(height: 50),
              Center(
                child: Image.asset(
                  img,
                  height: 50,
                  width: 50,
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 234, 234),
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
                        "GRANNYGO",
                        style:
                        TextStyle(fontSize: 30,fontWeight: FontWeight.bold,)
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 80),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(2),
              children: [
                makeDashboardItem("GAMES", "assets/games.png", 0),
                makeDashboardItem("MUSIC", "assets/music.png", 1),
                makeDashboardItem("TIPS", "assets/tips.png", 2),
                makeDashboardItem("EMERGENCY", "assets/emergency.png", 3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
