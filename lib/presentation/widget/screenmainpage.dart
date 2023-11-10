import 'package:flutter/material.dart';
import 'package:netflix/domine/colors.dart';
import 'package:netflix/presentation/downloads.dart';
import 'package:netflix/presentation/fast/fast_laught.dart';
import 'package:netflix/presentation/new.dart';
import 'package:netflix/presentation/serch/serch.dart';
import 'package:netflix/presentation/serch/serch_idle.dart';
import 'package:netflix/presentation/widget/screenbottomnavigation.dart';

class screenmainpage extends StatelessWidget {
  screenmainpage({super.key});
  final pages = [
    screenhome(),
    new_and_hot(),
    fast_laught(),
    serch(),
    screen_download()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: intexChangeNotifier,
          builder: (context, int index, _) {
            return pages[index];
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationscreen(),
    );
  }
}
