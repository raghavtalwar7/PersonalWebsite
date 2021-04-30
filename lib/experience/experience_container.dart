import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/utils/colour_assets.dart';

class ExperienceContainer extends StatelessWidget {
  const ExperienceContainer({
    Key key,
    @required this.experience,
    @required this.index,
  }) : super(key: key);

  final ExperienceInfo experience;
  final int index;

  @override
  Widget build(BuildContext context) {
    final colors = ColourAssets.all;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: colors.elementAt(index % colors.length),
        ),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(experience.company,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(height: 10),
          Text(
            experience.timeline,
            style: TextStyle(
              fontSize: 26,
            ),
          ),
          SizedBox(height: 10),
          for (final item in experience.descriptions)
            Text(
              item,
              style: TextStyle(
                fontSize: 20,
              ),
            )
        ],
      ),
    );
  }
}

TextStyle textStyle({bool isBold, bool isGrey}) {
  return TextStyle(
    fontSize: 20,
    height: 1.3,
    fontWeight: isBold ?? false ? FontWeight.bold : FontWeight.normal,
    color: isGrey ?? false ? Colors.grey : Colors.black,
  );
}

class ExperienceInfo {
  final String company;
  final String timeline;
  final List<String> descriptions;
  ExperienceInfo({
    @required this.company,
    @required this.timeline,
    @required this.descriptions,
  });
}

final experiences = [
  ExperienceInfo(
    company: 'Intern/Trainee @ Servosys Solutions',
    timeline: 'May 2019 - June 2019 (1 month)',
    descriptions: [
      '- Learned new technologies regarding to android development',
      '- Created different applications to apply different concepts'
    ],
  ),
  ExperienceInfo(
    company: 'Intern @ GlobalCert',
    timeline: 'November 2020 - December 2020 (2 months)',
    descriptions: [
      '- Created Frontend for their application',
      '- Also implemented backed using Mongodb',
    ],
  ),
];
