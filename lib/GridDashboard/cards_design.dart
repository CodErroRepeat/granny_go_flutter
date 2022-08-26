import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:granny_go/games/chess/chessGamePage.dart';
import 'package:granny_go/games/chooseGame.dart';
import 'package:granny_go/games/dailychores/tiledesign.dart';
import 'package:granny_go/games/match/MatchGamePage.dart';
import 'package:granny_go/games/tictactoe/game_page.dart';
import 'package:granny_go/Recipe/explore.dart';
import 'package:granny_go/games/games_card_design.dart';

import 'package:granny_go/music/screens/main.widget.dart';
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
      width: 300,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(5),
      //   gradient: const LinearGradient(
      //     begin: FractionalOffset(0.0, 0.0),
      //     end: FractionalOffset(3.0, -1.0),
      //     colors: [
      //       Color(0xFF84fcde),
      //       Color(0xFFffffff),
      //     ],
      //   ),
      //   boxShadow: const [
      //     BoxShadow(
      //       color: Colors.white,
      //       blurRadius: 3,
      //       offset: Offset(2, 2),
      //     )
      //   ],
      // ),
      child: InkWell(
        onTap: () {
          action();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
      appBar: AppBar(title: Text("Home")),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(left: 20, right: 20),
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              ],
            ),
            const SizedBox(
              height: 22,
            ),
            SizedBox(
              height: 349,
              child: ListView.builder(
                itemCount: dashboardItems.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return
                   MyHorizontalList(
                    startColor: 0xFF9288E4,
                    endColor: 0xFF534EA7,
                    courseHeadline: dashboardItems[index].title,
                    courseTitle: "",
                    courseImage: dashboardItems[index].img,
                     onTap: () => moveToGameFrom(index, context)
                  );
                },
              ),
              //   itemCount: 4,
              //   scrollDirection: Axis.horizontal,
              //   physics: const BouncingScrollPhysics(),
              //   itemBuilder: (context, index) {
              //     return const MyHorizontalList(
              //       startColor: 0xFF9288E4,
              //       endColor: 0xFF534EA7,
              //       courseHeadline: 'Games',
              //       courseTitle: 'Games',
              //       courseImage: 'assets/about/games.png',
              //     );
              //   },
              // ),
            ),
            const SizedBox(
              height: 34,
            ),

            ListView.builder(
              itemCount: newItems.length,
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return MyVerticalList(
                  image: newItems[index].img,
                  title: newItems[index].title,
                  onTap: () => moveToPage(index, context),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
  List<DashboardItem> dashboardItems = [
    DashboardItem("Daily Chores", "assets/about/tic-tac-toe.png"),
    DashboardItem("TICTACTOE", "assets/about/tic-tac-toe.png"),
    DashboardItem("CHESS", "assets/about/chess.png"),
    DashboardItem("PUZZLE", "assets/about/puzzle.png"),
  ];

  List<DashboardItem> newItems = [
    DashboardItem("Recipes", "assets/about/recipes.png"),
    DashboardItem("Tips", "assets/about/tips.png")
  ];

  void moveToGameFrom(int index, BuildContext context) {
    if (index == 0) moveToDailyChores(context);
    else if (index == 1) moveToTicTacToe(context);
    else if (index == 2) moveToChess(context);
    else if (index == 3) moveToPuzzle(context);
  }

  void moveToPage(int index, BuildContext context) {
    if (index == 0) moveToRecipes(context);
    else  if (index == 1) moveToTips(context);
  }

void moveToDailyChores(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => TileDesignItems()));
}
  void moveToRecipes(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Explore()));
  }
  void moveToTicTacToe(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => GamePage()));

  }
  void moveToPuzzle(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MatchGamePage()));

  }
  void moveToChess(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => chessGamePage()));

  }
  void moveToTips(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyHomePage()));
  }



}

