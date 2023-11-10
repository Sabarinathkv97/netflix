import 'package:flutter/material.dart';
import 'package:netflix/presentation/widget/title.dart';

const imageurl =
    "https://mir-s3-cdn-cf.behance.net/project_modules/1400/61da8438155793.57575971afe13.jpg";

class serchResultPage extends StatelessWidget {
  const serchResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        serchtitile(
          title: "Movies & Tv",
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
            child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          mainAxisSpacing: 15,
          crossAxisSpacing: 0,
          childAspectRatio: 1.2 / 1.5,
          children: List.generate(20, (index) {
            return mainCard();
          }),
        ))
      ],
    );
  }
}

class mainCard extends StatelessWidget {
  const mainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(imageurl)),
          borderRadius: BorderRadius.circular(18)),
    );
  }
}
