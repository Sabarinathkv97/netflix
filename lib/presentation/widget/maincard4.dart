import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class Maincard4 extends StatelessWidget {
  final int index;
  const Maincard4({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              height: 50,
              width: 50,
            ),
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.amber,
                  image: DecorationImage(
                    image: NetworkImage(
                      "http://files.gamezhero.com/game/437/053/4370530ea16d0d26/images/240/monsterhouse.jpg",
                    ),
                  )),
            ),
          ],
        ),
        Positioned(
          left: 25,
          bottom: 10,
          child: BorderedText(
            strokeColor: Colors.white,
            child: Text(
              "${index + 1}",
              style: TextStyle(
                  fontSize: 90,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}
