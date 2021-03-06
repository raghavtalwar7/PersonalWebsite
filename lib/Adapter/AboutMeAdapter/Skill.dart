import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../../Variable.dart';

class Skill extends StatefulWidget {
  @override
  _SkillState createState() => _SkillState();
}

class _SkillState extends State<Skill> {
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
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: AnimatedTextKit(
              isRepeatingAnimation: false,
              animatedTexts: [
                TypewriterAnimatedText(
                  'Skills',
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
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          child: Center(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Icon(
                                        Icons.skip_next,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                    FutureBuilder(
                                      future: count(1),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.done) {
                                          return Container(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 15, 15, 10),
                                            child: AnimatedTextKit(
                                              isRepeatingAnimation: false,
                                              animatedTexts: [
                                                TypewriterAnimatedText(SKILL1,
                                                    speed: Duration(
                                                        milliseconds: 10),
                                                    textStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign:
                                                        TextAlign.center),
                                              ],
                                            ),
                                          );
                                        }
                                        return Container();
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Icon(
                                        Icons.skip_next,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                    FutureBuilder(
                                      future: count(1),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.done) {
                                          return Container(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 15, 15, 10),
                                            child: AnimatedTextKit(
                                              isRepeatingAnimation: false,
                                              animatedTexts: [
                                                TypewriterAnimatedText(SKILL2,
                                                    speed: Duration(
                                                        milliseconds: 10),
                                                    textStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.left),
                                              ],
                                            ),
                                          );
                                        }
                                        return Container();
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Icon(
                                        Icons.skip_next,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                    FutureBuilder(
                                      future: count(1),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.done) {
                                          return Container(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 15, 15, 10),
                                            child: AnimatedTextKit(
                                              isRepeatingAnimation: false,
                                              animatedTexts: [
                                                TypewriterAnimatedText(SKILL3,
                                                    speed: Duration(
                                                        milliseconds: 10),
                                                    textStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.left),
                                              ],
                                            ),
                                          );
                                        }
                                        return Container();
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Icon(
                                        Icons.skip_next,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                    FutureBuilder(
                                      future: count(1),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.done) {
                                          return Container(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 15, 15, 10),
                                            child: AnimatedTextKit(
                                              isRepeatingAnimation: false,
                                              animatedTexts: [
                                                TypewriterAnimatedText(SKILL4,
                                                    speed: Duration(
                                                        milliseconds: 10),
                                                    textStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.left),
                                              ],
                                            ),
                                          );
                                        }
                                        return Container();
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Icon(
                                        Icons.skip_next,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                    FutureBuilder(
                                      future: count(1),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.done) {
                                          return Container(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 15, 15, 10),
                                            child: AnimatedTextKit(
                                              isRepeatingAnimation: false,
                                              animatedTexts: [
                                                TypewriterAnimatedText(SKILL5,
                                                    speed: Duration(
                                                        milliseconds: 10),
                                                    textStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.left),
                                              ],
                                            ),
                                          );
                                        }
                                        return Container();
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Icon(
                                        Icons.skip_next,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                    FutureBuilder(
                                      future: count(1),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.done) {
                                          return Container(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 15, 15, 10),
                                            child: AnimatedTextKit(
                                              isRepeatingAnimation: false,
                                              animatedTexts: [
                                                TypewriterAnimatedText(SKILL6,
                                                    speed: Duration(
                                                        milliseconds: 10),
                                                    textStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.left),
                                              ],
                                            ),
                                          );
                                        }
                                        return Container();
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    )
                  ],
                )
              : Column(
                  children: [
                    Center(
                      child: Container(
                          padding: EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Icon(
                                        Icons.skip_next,
                                        color: Colors.white,
                                        size: 8,
                                      ),
                                    ),
                                    FutureBuilder(
                                      future: count(1),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.done) {
                                          return Container(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 15, 15, 10),
                                            child: AnimatedTextKit(
                                              isRepeatingAnimation: false,
                                              animatedTexts: [
                                                TypewriterAnimatedText(
                                                    "JAVA\n( Programming & Android )",
                                                    speed: Duration(
                                                        milliseconds: 10),
                                                    textStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.left),
                                              ],
                                            ),
                                          );
                                        }
                                        return Container();
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Icon(
                                        Icons.skip_next,
                                        color: Colors.white,
                                        size: 8,
                                      ),
                                    ),
                                    FutureBuilder(
                                      future: count(1),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.done) {
                                          return Container(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 15, 15, 10),
                                            child: AnimatedTextKit(
                                              isRepeatingAnimation: false,
                                              animatedTexts: [
                                                TypewriterAnimatedText(SKILL2,
                                                    speed: Duration(
                                                        milliseconds: 10),
                                                    textStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.left),
                                              ],
                                            ),
                                          );
                                        }
                                        return Container();
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Icon(
                                        Icons.skip_next,
                                        color: Colors.white,
                                        size: 8,
                                      ),
                                    ),
                                    FutureBuilder(
                                      future: count(1),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.done) {
                                          return Container(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 15, 15, 10),
                                            child: AnimatedTextKit(
                                              isRepeatingAnimation: false,
                                              animatedTexts: [
                                                TypewriterAnimatedText(SKILL3,
                                                    speed: Duration(
                                                        milliseconds: 10),
                                                    textStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.left),
                                              ],
                                            ),
                                          );
                                        }
                                        return Container();
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Icon(
                                        Icons.skip_next,
                                        color: Colors.white,
                                        size: 8,
                                      ),
                                    ),
                                    FutureBuilder(
                                      future: count(1),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.done) {
                                          return Container(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 15, 15, 10),
                                            child: AnimatedTextKit(
                                              isRepeatingAnimation: false,
                                              animatedTexts: [
                                                TypewriterAnimatedText(SKILL4,
                                                    speed: Duration(
                                                        milliseconds: 10),
                                                    textStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.left),
                                              ],
                                            ),
                                          );
                                        }
                                        return Container();
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Icon(
                                        Icons.skip_next,
                                        color: Colors.white,
                                        size: 8,
                                      ),
                                    ),
                                    FutureBuilder(
                                      future: count(1),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.done) {
                                          return Container(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 15, 15, 10),
                                            child: AnimatedTextKit(
                                              isRepeatingAnimation: false,
                                              animatedTexts: [
                                                TypewriterAnimatedText(SKILL5,
                                                    speed: Duration(
                                                        milliseconds: 10),
                                                    textStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.left),
                                              ],
                                            ),
                                          );
                                        }
                                        return Container();
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Icon(
                                        Icons.skip_next,
                                        color: Colors.white,
                                        size: 8,
                                      ),
                                    ),
                                    FutureBuilder(
                                      future: count(1),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.done) {
                                          return Container(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 15, 15, 10),
                                            child: AnimatedTextKit(
                                              isRepeatingAnimation: false,
                                              animatedTexts: [
                                                TypewriterAnimatedText(SKILL6,
                                                    speed: Duration(
                                                        milliseconds: 10),
                                                    textStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.left),
                                              ],
                                            ),
                                          );
                                        }
                                        return Container();
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Icon(
                                        Icons.skip_next,
                                        color: Colors.white,
                                        size: 8,
                                      ),
                                    ),
                                    FutureBuilder(
                                      future: count(1),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.done) {
                                          return Container(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 15, 15, 10),
                                            child: AnimatedTextKit(
                                              isRepeatingAnimation: false,
                                              animatedTexts: [
                                                TypewriterAnimatedText(
                                                    "Ubuntu ",
                                                    speed: Duration(
                                                        milliseconds: 10),
                                                    textStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.left),
                                              ],
                                            ),
                                          );
                                        }
                                        return Container();
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    )
                  ],
                ),
        ],
      ),
    );
  }
}
