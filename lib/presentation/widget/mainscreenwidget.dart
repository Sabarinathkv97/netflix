import 'package:flutter/material.dart';
import 'package:netflix/presentation/widget/icons.dart';
import 'package:netflix/presentation/widget/playbutton.dart';

class main_screeen_widget extends StatelessWidget {
  const main_screeen_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 700,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://mir-s3-cdn-cf.behance.net/project_modules/1400/61da8438155793.57575971afe13.jpg"))),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Iconsz(
                icon: Icons.add,
                text: "Play",
              ),
              playButton(),
              Iconsz(icon: Icons.info, text: "Info")
            ],
          ),
        )
      ],
    );
  }
}
