import 'package:flutter/material.dart';

class TileDesignItems extends StatefulWidget {
  const TileDesignItems({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TileDesignItemsState createState() => _TileDesignItemsState();
}

class TileItem {
  // String id;
  String title;
  String img;
  TileItem(this.title, this.img);
}

// ignore: non_constant_identifier_names
Card TileView(TileItem item, VoidCallback action) {

  return Card(

    elevation: 8,
    margin: const EdgeInsets.all(8),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        gradient: const LinearGradient(
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(3.0, -1.0),
          colors: [
            Color(0xffa2afc5),
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
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: [
            const SizedBox(height: 4),
            Center(
              child: Draggable<TileItem>(
                data:item,
                childWhenDragging: Image.asset(
                item.img,
                  height:60,
                  width: 60,
                ),
                feedback: Image.asset(
                  item.img,
                  height: 60,
                  width: 60,
                ),
                child: Image.asset(
                  item.img,
                  height: 60,
                  width: 60,
                ),

              )
            ),
            const SizedBox(height: 2),
            Center(
              child: Text(
                item.title,
                style: const TextStyle(
                    fontSize: 8,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    ),
  );
}

class _TileDesignItemsState extends State<TileDesignItems> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(" DAILY CHORES"),
      ),
      backgroundColor: Color.fromARGB(255, 238, 234, 234),

      body:
      Column(
        children: [
          // const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("ironing/shirts.png",height: 100),
              SizedBox(height: 10),
              Text(
                "IRONING CLOTHES",
                style:
                TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ],
          ),
          ),
    Padding(
    padding: const EdgeInsets.only(left: 5, right: 5),
    child:
          Column(
              children: [1,2,3,4].map((item) {
                return DragTarget<int>(
                  onAccept: (receivedItem) {
                    // if (item.value == receivedItem.value) {
                    //   setState(() {
                    //     // items.remove(receivedItem);
                    //     // items2.remove(item);
                    //     // score += 10;
                    //     // item.accepting = false;
                    //   });
                    // } else {
                    //   // setState(() {
                    //   //   score -= 5;
                    //   //   item.accepting = false;
                    //   });
                    // }
                  },
                  onLeave: (receivedItem) {
                    // setState
                    // (() {
                    //   item.accepting = false;
                    // });
                  },
                  onWillAccept: (receivedItem) {
                    // setState(() {
                    //   item.accepting = true;
                    // });
                    return true;
                  },
                  builder: (context, acceptedItems, rejectedItem) =>
                      Card(
                        elevation: 8,
                        shadowColor: Colors.green,
                        margin: EdgeInsets.all(5),
                        shape: CircleBorder(side: BorderSide(width: 1, color: Colors.white),
                        ),
                        child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          height: 50,
                          width: 50,
                        )

                          // p,),
                        ),
                      )
                );
              }).toList()),
    ),
          // const SizedBox(height: 50),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(1),
              children: [
                TileView(TileItem("Sort your laundry by material", "ironing/laundry.png"), () {
                }),
                TileView(TileItem("Set up your ironing board.", "ironing/ironsetup.png"), () {
                  //Game 2
                }),
                TileView(TileItem("Turn your iron onto the correct setting", "ironing/steam.png"), () {
                  //GAME3
                }),
                TileView(TileItem("Iron The clothes gently", "ironing/ironing.png"), () {
                  //GAME3
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}