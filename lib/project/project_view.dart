import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/components/desktop_view_builder.dart';
import 'package:portfolio_flutter_web/components/mobile_desktop_view_builder.dart';
import 'package:portfolio_flutter_web/components/mobile_view_builder.dart';
import 'package:portfolio_flutter_web/project/project_item_body.dart';

class ProjectItem {
  final String image;
  final String title;
  final String description;
  final List<String> technologies;
  ProjectItem({
    @required this.image,
    @required this.title,
    @required this.description,
    @required this.technologies,
  });
}

final kProjectItems = [
  ProjectItem(
    image: 'images/project_2.png',
    title: 'Encrypto-decrypto App',
    description:
        'An simple encryption - decryption application which encryptes and decrypts all types of files like images, documents, audios and videos with the help of AES algorithm. It uses fingerprint api for authentication of encryption and decryption.',
    technologies: [
      'Android',
      'Firebase',
      'Java',
    ],
  ),
  ProjectItem(
    image: 'images/project_1.png',
    title: 'MorseEx App',
    description:
        'An app for long distance communication between normal people and deaf-blind(specially-abled) people.',
    technologies: [
      'Android',
      'Firebase',
      'Java',
    ],
  ),
];

class ProjectView extends StatelessWidget {
  const ProjectView({
    Key key,
  }) : super(key: key);
  static const title = 'Projects';

  @override
  Widget build(BuildContext context) {
    return MobileDesktopViewBuilder(
        mobileView: ProjectMobileView(), desktopView: ProjectDesktopView());
  }
}

class ProjectDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DesktopViewBuilder(
      titleText: ProjectView.title,
      children: [
        SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final item in kProjectItems)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProjectItemBody(item: item),
                ),
              )
          ],
        ),
        SizedBox(height: 70),
      ],
    );
  }
}

class ProjectMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MobileViewBuilder(
      titleText: ProjectView.title,
      children: [for (final item in kProjectItems) ProjectItemBody(item: item)],
    );
  }
}
