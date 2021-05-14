import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/Adapter/AppbarAdapter/MobileAppBar.dart';
import 'package:myportfolio/Adapter/AppbarAdapter/OtherDeviceAppBar.dart';
import 'package:myportfolio/Adapter/MobileDrawerAdapter/MobileDrawer.dart';
import 'package:myportfolio/Adapter/ProjectsAdapter/ProjectsAdapter.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
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
                      TypewriterAnimatedText("My Projects",
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
                        return ProjectAdapter(
                          ProjectName: "Encrypto-Decrypto App",
                          ProjectLogoPath: '',
                          ProjectDescription:
                              "An encryption - decryption application which encryptes and decrypts all types of files like images, documents, audios and videos with the help of AES algorithm. It uses fingerprint api for authentication of encryption and decryption.",
                          ProjectDescriptionForMobile:
                              "An encryption - decryption application which encryptes and decrypts all types of files like images, documents, audios and videos with the help of AES algorithm. It uses fingerprint api for authentication of encryption and decryption.",
                          FirstTechnology: 'ANDROID ',
                          SecondTechnology: ' , JAVA ',
                          ThirdTechnology: ' , XML ',
                          ForthTechnology: ' , Firebase',
                          ProjectUrl:
                              "https://github.com/raghavtalwar7/Encrypto-decrypto",
                        );
                      }
                      return Container();
                    }),
                SizedBox(
                  height: 12,
                ),
                FutureBuilder(
                    future: count(3),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ProjectAdapter(
                          ProjectName: "My Portfolio",
                          ProjectLogoPath: '',
                          ProjectDescription:
                              "'My Portfolio' is a flutter web application . Its just a web resume",
                          ProjectDescriptionForMobile:
                              "'My Portfolio' is a flutter web application .\nIts just a web resume",
                          FirstTechnology: 'FLUTTER ',
                          SecondTechnology: ', DART ',
                          ThirdTechnology: ', FIREBASE ',
                          ForthTechnology: ', GITHUB',
                          ProjectUrl:
                              "https://github.com/raghavtalwar7/PersonalWebsite",
                        );
                      }
                      return Container();
                    }),
                SizedBox(
                  height: 12,
                ),
                FutureBuilder(
                    future: count(4),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ProjectAdapter(
                          ProjectName: "MorseEx",
                          ProjectLogoPath: '',
                          ProjectDescription:
                              "An app for long distance communication between normal people and deaf-blind(specially-abled) people.",
                          ProjectDescriptionForMobile:
                              "An app for long distance communication between normal people and deaf-blind(specially-abled) people.",
                          FirstTechnology: 'Android',
                          SecondTechnology: 'JAVA',
                          ThirdTechnology: 'Firebase',
                          ForthTechnology: '',
                          ProjectUrl: "https://github.com/raghavtalwar7/XMorse",
                        );
                      }
                      return Container();
                    }),
                SizedBox(
                  height: 12,
                ),
                FutureBuilder(
                    future: count(4),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ProjectAdapter(
                          ProjectName: "InstaClone",
                          ProjectLogoPath: '',
                          ProjectDescription: "An Instagram Clone.",
                          ProjectDescriptionForMobile: "An Instagram Clone.",
                          FirstTechnology: 'Android',
                          SecondTechnology: 'JAVA',
                          ThirdTechnology: 'Firebase',
                          ForthTechnology: '',
                          ProjectUrl:
                              "https://github.com/raghavtalwar7/instaclone",
                        );
                      }
                      return Container();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
