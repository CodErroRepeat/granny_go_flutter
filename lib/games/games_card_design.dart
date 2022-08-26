import 'package:flutter/material.dart';
import 'package:granny_go/games/dailychores/tiledesign.dart';
import 'package:flutter/services.dart';
import 'package:granny_go/games/match/MatchGamePage.dart';
import 'package:granny_go/games/tictactoe/game_page.dart';
import 'package:granny_go/main.dart';
import 'package:granny_go/games/chess/chessGamePage.dart';

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
              child: Image.asset(item.img,
                bundle: rootBundle,
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
      backgroundColor: Colors.white, //Color.fromARGB(255, 170, 193, 232),
      body: Column(
        children: [
          const SizedBox(height: 40),
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
                DashboardView(DashboardItem("TICTACTOE", "assets/about/tic-tac-toe.png"), () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => GamePage()));
                  //game 1
                }),
                DashboardView(DashboardItem("DAILY CHORES", "games_img/spelling-bee.png"), () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => TileDesignItems()));
                 //GAME2
                }),
                DashboardView(DashboardItem("CHESS", "assets/about/chess.png"), () {
                 //GAME3
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => chessGamePage()));
                }),
                DashboardView(DashboardItem("SUDOKU", "assets/about/pastime.png"), () {
                  //GAME 1
                }),
                DashboardView(DashboardItem("FLIPCARD", "assets/about/memory.png"), () {
                  //GAME 1
                }),
                DashboardView(DashboardItem("PUZZLE", "assets/about/puzzle.png"), () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MatchGamePage()));
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
