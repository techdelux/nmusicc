import 'package:flutter/material.dart';
import 'package:nmusicc/widgets/responsive.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Theme.of(context).bottomAppBarColor,
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              children: [
                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //     BottomBarColumn(
                //       heading: 'ABOUT',
                //       s1: 'Contact Us',
                //       s2: 'About Us',
                //       s3: 'Careers',
                //     ),
                //     BottomBarColumn(
                //       heading: 'HELP',
                //       s1: 'Payment',
                //       s2: 'Cancellation',
                //       s3: 'FAQ',
                //     ),
                //     BottomBarColumn(
                //       heading: 'SOCIAL',
                //       s1: 'Twitter',
                //       s2: 'Facebook',
                //       s3: 'YouTube',
                //     ),
                //   ],
                // ),
                // Container(
                //   color: Colors.blueGrey,
                //   width: double.maxFinite,
                //   height: 1,
                // ),
                // SizedBox(height: 20),
                // InfoText(
                //   type: 'Email',
                //   text: '*********',
                // ),
                // SizedBox(height: 5),
                // InfoText(
                //   type: 'Website',
                //   text: '*********',
                // ),
                // SizedBox(height: 20),
                Container(
                  color: Colors.blueGrey,
                  width: double.maxFinite,
                  height: 1,
                ),
                SizedBox(height: 20),
                Text(
                  'Copyright © 2021 | NMUSICC',
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 14,
                  ),
                ),
              ],
            )
          : Column(
              children: [
                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //     BottomBarColumn(
                //       heading: 'ABOUT',
                //       s1: 'Contact Us',
                //       s2: 'About Us',
                //       s3: 'Careers',
                //     ),
                //     BottomBarColumn(
                //       heading: 'HELP',
                //       s1: 'Payment',
                //       s2: 'Cancellation',
                //       s3: 'FAQ',
                //     ),
                //     BottomBarColumn(
                //       heading: 'SOCIAL',
                //       s1: 'Twitter',
                //       s2: 'Facebook',
                //       s3: 'YouTube',
                //     ),
                //     Container(
                //       color: Colors.blueGrey,
                //       width: 1,
                //       height: 150,
                //     ),
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         InfoText(
                //           type: 'Email',
                //           text: '*********',
                //         ),
                //         SizedBox(height: 5),
                //         InfoText(
                //           type: 'Website',
                //           text: '*********',
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.blueGrey,
                    width: double.maxFinite,
                    height: 1,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Copyright © 2021 | WBST',
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}
