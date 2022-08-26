import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

class chessGamePage extends StatefulWidget {
  const chessGamePage({Key? key}) : super(key: key);

  @override
  State<chessGamePage> createState() => _chessGamePageState();
}

class _chessGamePageState extends State<chessGamePage> {
  ChessBoardController controller = ChessBoardController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Chess Game"),
      ),
      body: Center(
        child: ChessBoard(
          controller: controller,
          boardColor: BoardColor.darkBrown,
          boardOrientation: PlayerColor.white,
          onMove: () {
            //
          },
          arrows: [
            BoardArrow(from: "b2", to: "b4", color: Colors.red.withOpacity(0.9))
          ],
        ),
      ),
    );
  }
}
