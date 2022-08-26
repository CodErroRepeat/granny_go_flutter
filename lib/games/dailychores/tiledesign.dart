import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

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
  // bool accepting;
  TileItem(this.title, this.img);//, this.accepting);

  @override
  bool operator ==(Object other) {
    if (other is! TileItem) return false;
    if (title != other.title) return false;
    if (img != other.img) return false;
    return true;
  }

  @override
  int get hashCode {
    var result = 17;
    result = 37 * result + img.hashCode;
    result = 37 * result + title.hashCode;
    return result;
  }
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
            const SizedBox(height: 20),
            Center(
              child: Draggable<TileItem>(
                data:item,
                childWhenDragging: Image.asset(
                item.img,
                  height:80,
                  width: 80,
                ),
                feedback: Image.asset(
                  item.img,
                  height: 80,
                  width: 80,
                ),
                child: Image.asset(
                  item.img,
                  height: 80,
                  width: 80,
                ),
              )
            ),
            const SizedBox(height: 2),
            Center(
              child: Text(
                item.title,
                style: const TextStyle(
                    fontSize: 14,
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

  Map<int,TileItem> _userSetOrder = {};
  List<TileItem> _refListItem = [];
  bool gameCompleted = false;
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
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("assets/ironing/shirts.png",height: 100),
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
              children: [4,3,2,1].map((index) {
                return DragTarget<TileItem>(
                  onAccept: (receivedItem) {

                    if (_refListItem.contains(receivedItem)) {
                      // receivedItem.accepting = false;
                    } else {
                      setState(() {
                        // receivedItem.accepting = false;

                        _userSetOrder[index] = receivedItem;
                        _refListItem.add(receivedItem);
                      });
                    }

                    if (_refListItem.length == tiles.length) {
                      if (mapEquals(_userSetOrder, tileOrder)) {
                        gameCompleted = true;
                      }
                      else {
                        _userSetOrder.clear();
                        _refListItem.clear();
                      }
                    }
                  },
                  onLeave: (receivedItem) {
                    setState
                    (() {
                      // receivedItem?.accepting = false;
                    });
                  },
                  onWillAccept: (receivedItem) {
                    setState(() {
                      // receivedItem?.accepting = true;
                    });
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
                        padding: const EdgeInsets.only(left: 0),
                        child: Container(
                          child: Center(child:
                          _userSetOrder[index] != null ? Image.asset(_userSetOrder[index]?.img ?? "", height: 40, width: 40,) : Text("$index", textAlign: TextAlign.center,),),
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
              children:
                tiles.map((tile) =>
                TileView(tile, () {
                })).toList()
            ),
          ),
        ],
      ),
    );
  }

  List<TileItem> tiles = [
    TileItem("Sort your laundry by material", "assets/ironing/laundry.png"),//, false),
    TileItem("Set up your ironing board.", "assets/ironing/ironsetup.png"),//, false),
    TileItem("Turn your iron onto the correct setting", "assets/ironing/steam.png"),//, false),
    TileItem("Iron The clothes gently", "assets/ironing/ironing.png")//, false),
  ];

  Map<int,TileItem> tileOrder = {
    1: TileItem("Sort your laundry by material", "assets/ironing/laundry.png"),//, false),
    2: TileItem("Set up your ironing board.", "assets/ironing/ironsetup.png"),//, false),
    3: TileItem("Turn your iron onto the correct setting", "assets/ironing/steam.png"),//, false),
    4: TileItem("Iron The clothes gently", "assets/ironing/ironing.png")//, false),
  };
}