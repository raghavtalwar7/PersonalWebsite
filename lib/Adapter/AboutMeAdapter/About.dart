import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../Variable.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  Future count(int n) async {
    return Future.delayed(Duration(seconds: n));
  }

  late double hight, width;
  @override
  Widget build(BuildContext context) {
    hight = MediaQuery.of(context).size.height > 600
        ? MediaQuery.of(context).size.height
        : 600;
    width = MediaQuery.of(context).size.width > 300
        ? MediaQuery.of(context).size.width
        : 300;
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: AnimatedTextKit(
              isRepeatingAnimation: false,
              animatedTexts: [
                TypewriterAnimatedText(
                  'Who Am I ?',
                  speed: Duration(milliseconds: 55),
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.4,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          width > 610
              ? Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: FutureBuilder(
                          future: count(1),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.done) {
                              return Container(
                                padding: EdgeInsets.all(15),
                                child: AnimatedTextKit(
                                  isRepeatingAnimation: false,
                                  animatedTexts: [
                                    TypewriterAnimatedText(WHO_AM_I,
                                        speed: Duration(milliseconds: 2),
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.center),
                                  ],
                                ),
                              );
                            }
                            return Container();
                          },
                        ),
                      ),
                    )
                  ],
                )
              : Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: FutureBuilder(
                        future: count(1),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return Container(
                              padding: EdgeInsets.all(15),
                              child: AnimatedTextKit(
                                isRepeatingAnimation: false,
                                animatedTexts: [
                                  TypewriterAnimatedText(WHO_AM_I,
                                      speed: Duration(milliseconds: 2),
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.center),
                                ],
                              ),
                            );
                          }
                          return Container();
                        },
                      ),
                    )
                  ],
                ),
        ],
      ),
    );
  }
}
