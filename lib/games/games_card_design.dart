import 'package:flutter/material.dart';
import 'package:granny_go/games/tictactoe/game_page.dart';


class MakeGameDashboardItems extends StatefulWidget {
  const MakeGameDashboardItems({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MakeGameDashboardItemsState createState() => _MakeGameDashboardItemsState();
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
          crossAxisAlignment: CrossAxisAlignment.start,
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

class _MakeGameDashboardItemsState extends State<MakeGameDashboardItems> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(" GAMES CORNER"),
      ),
      backgroundColor: Color.fromARGB(255, 170, 193, 232),
      body: Column(
        children: [
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(2),
              children: [
                DashboardView(DashboardItem("TICTACTOE", "games_img/tic-tac-toe.png"), () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => GamePage()));
                  //game 1
                }),
                DashboardView(DashboardItem("SPELL BEE", "games_img/spelling-bee.png"), () {
                 //GAME2
                }),
                DashboardView(DashboardItem("CHESS", "games_img/chess.png"), () {
                 //GAME3
                }),
                DashboardView(DashboardItem("SUDOKU", "games_img/pastime.png"), () {
                  //GAME 1
                }),
                DashboardView(DashboardItem("FLIPCARD", "games_img/memory.png"), () {
                  //GAME 1
                }),
                DashboardView(DashboardItem("PUZZLE", "games_img/puzzle.png"), () {
                  //GAME 1
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
