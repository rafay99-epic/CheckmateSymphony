import 'package:chess/compoents/square.dart';
import 'package:chess/helper/helper_method.dart';
import 'package:flutter/material.dart';

class GameBoard extends StatefulWidget {
  GameBoard({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _GameBoardState createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            itemCount: 8 * 8,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 8),
            itemBuilder: (context, index) {
              return Square(isWhite: isWhite(index));
            }));
  }
}
