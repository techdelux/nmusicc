import 'package:nmusicc/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const _hrmnzr = 'https://github.com/techdelux/wbst.git';
const _arpggtr = 'https://github.com/techdelux/wbst.git';
const _mldsp = 'https://github.com/techdelux/wbst.git';

void _launchHRMNZR() async => await canLaunch(_hrmnzr)
    ? await launch(_hrmnzr)
    : throw 'Could not launch $_hrmnzr';

void _launchARPGGTR() async => await canLaunch(_arpggtr)
    ? await launch(_arpggtr)
    : throw 'Could not launch $_arpggtr';

void _launchMLDSP() async => await canLaunch(_mldsp)
    ? await launch(_mldsp)
    : throw 'Could not launch $_mldsp';

class FeaturedTiles extends StatelessWidget {
  FeaturedTiles({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  final List<String> assets = [
    'assets/images/harmonizer.png',
    'assets/images/arpeggiator.png',
    'assets/images/mldsp.png',
  ];

  final List<String> title = ['Harmonizer', 'Arpeggiator', 'DSP&ML'];

  final List<Function> links = [
    _launchHRMNZR,
    _launchARPGGTR,
    _launchMLDSP,
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Padding(
            padding: EdgeInsets.only(
                top: screenSize.height / 50, left: screenSize.width / 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: screenSize.width / 15),
                  ...Iterable<int>.generate(assets.length).map(
                    (int pageIndex) => Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: screenSize.width / 2.5,
                              width: screenSize.width / 1.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Image.asset(
                                  assets[pageIndex],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0.0),
                              child: Center(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey[800],
                                  ),
                                  // onPressed: links[pageIndex] as void Function()?,
                                  onPressed: () {},
                                  child: Text('View code on GitHub'),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                          ],
                        ),
                        SizedBox(width: screenSize.width / 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.only(
              top: screenSize.height * 0.06,
              left: screenSize.width / 15,
              right: screenSize.width / 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...Iterable<int>.generate(assets.length).map(
                  (int pageIndex) => Column(
                    children: [
                      SizedBox(
                        height: screenSize.width / 6,
                        width: screenSize.width / 3.8,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset(
                            assets[pageIndex],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey[800],
                            ),
                            // onPressed: links[pageIndex] as void Function()?,
                            onPressed: () {},
                            child: Text('View code on GitHub'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
