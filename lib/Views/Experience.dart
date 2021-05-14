import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:myportfolio/Adapter/AppbarAdapter/MobileAppBar.dart';
import 'package:myportfolio/Adapter/AppbarAdapter/OtherDeviceAppBar.dart';
import 'package:myportfolio/Adapter/ExperienceAdapter/ExperienceAdapter.dart';
import 'package:myportfolio/Adapter/MobileDrawerAdapter/MobileDrawer.dart';

class Experience extends StatefulWidget {
  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  late double hight, width;
  Future count(int n) async {
    return Future.delayed(Duration(seconds: n));
  }

  @override
  Widget build(BuildContext context) {
    hight = MediaQuery.of(context).size.height > 600
        ? MediaQuery.of(context).size.height
        : 600;
    width = MediaQuery.of(context).size.width > 300
        ? MediaQuery.of(context).size.width
        : 300;
    return Scaffold(
      drawer: width < 600 ? MobileDrawer() : Container(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: width < 600 ? MobileAppBar() : OtherDeviceAppBar(),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            height: hight,
            width: width,
            child: ListView(
              children: [
                Center(
                    child: Container(
                  child: AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TypewriterAnimatedText("Where I Worked",
                          speed: Duration(milliseconds: 80),
                          textStyle: TextStyle(
                              fontSize: width > 600 ? 40 : 27,
                              color: Colors.white,
                              letterSpacing: 4),
                          textAlign: TextAlign.start),
                    ],
                  ),
                )),
                SizedBox(
                  height: 15,
                ),
                FutureBuilder(
                    future: count(2),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ExperienceAdapter(
                          CompanyLogoPath: 'assets/images/servosyslogo.png',
                          CompanyName: "Servosys Solutions",
                          WorkDescription:
                              "I worked as a Mobile Developer(as an trainee) in Servosys Solutions.",
                          WorkDescriptionForMobile:
                              "I worked as a Mobile Developer \nas an trainee in Servosys Solutions.",
                          WorkDuration: "May,2019 - June, 2019",
                        );
                      }
                      return Container();
                    }),
                SizedBox(
                  height: 15,
                ),
                FutureBuilder(
                    future: count(2),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ExperienceAdapter(
                          CompanyLogoPath: 'assets/images/gclogo.png',
                          CompanyName: "GlobalCert",
                          WorkDescription:
                              "I work as a Mobile Developer(as an intern) in GlobalCert.",
                          WorkDescriptionForMobile:
                              "I work as a Mobile Developer \nas an intern in GlobalCert.",
                          WorkDuration: "November,2020 - December, 2020",
                        );
                      }
                      return Container();
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
