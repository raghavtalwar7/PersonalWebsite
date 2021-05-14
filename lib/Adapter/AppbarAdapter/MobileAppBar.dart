import 'package:flutter/material.dart';

import '../../Variable.dart';

class MobileAppBar extends StatefulWidget {
  @override
  _MobileAppBarState createState() => _MobileAppBarState();
}

class _MobileAppBarState extends State<MobileAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      actions: [
        Container(
          padding: EdgeInsets.only(right: 13),
          child: Row(
            children: [
              Text(
                "Raghav Talwar",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
  }
}
