import 'package:flutter/material.dart';
import 'dart:math';

class ChangeImage extends StatefulWidget {
  const ChangeImage({super.key});

  @override
  State<ChangeImage> createState() {
    return _ChangeImage();
  }
}

class _ChangeImage extends State<ChangeImage> {
  var showImg = 'assets/Empty.png';

  void resetImg() {
    setState(() {
      showImg = 'assets/Empty.png';
    });
  }

  void cockOrpussy() {
    var randomNum = Random().nextInt(2);
    var cockImg = 'assets/cock.png';
    var pussyImg = 'assets/pussy.png';

    if (randomNum == 0) {
      setState(() {
        showImg = cockImg;
      });
    } else {
      setState(() {
        showImg = pussyImg;
      });
    }
  }

  final buttontheme = TextButton.styleFrom(
    foregroundColor: Colors.black,
    backgroundColor: Colors.lightBlue,
    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
    textStyle: const TextStyle(fontSize: 28),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
  );

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
              style: buttontheme, onPressed: resetImg, child: const Text('Reset')),
          const SizedBox(height: 100,),
          Image.asset(
            showImg,
            width: 300,
            height: 300,
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              style: buttontheme,
              onPressed: cockOrpussy,
              child: const Text('Cock Or Pussy')),
        ],
      ),
    );
  }
}
