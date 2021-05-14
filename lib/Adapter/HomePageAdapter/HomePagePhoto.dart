import 'package:flutter/material.dart';

import '../../Variable.dart';

class HomePagePhoto extends StatefulWidget {
  @override
  _HomePagePhotoState createState() => _HomePagePhotoState();
}

class _HomePagePhotoState extends State<HomePagePhoto> {
  @override
  Widget build(BuildContext context) {
    var borderColor = Colors.white;
    var backgroundColor = Colors.transparent;
    return Container(
      child: Transform.rotate(
        angle: 0,
        child: FittedBox(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor,
              border: Border.all(color: borderColor, width: 2),
              image: DecorationImage(
                image: AssetImage(IMAGE_PATH),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
