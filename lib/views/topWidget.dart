import 'package:flutter/material.dart';
import 'package:nmusicc/widgets/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

const _rcrdr = 'https://github.com/techdelux/wbst.git';

void _launchRCRDR() async => await canLaunch(_rcrdr)
    ? await launch(_rcrdr)
    : throw 'Could not launch $_rcrdr';

class RCRDRView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ResponsiveWidget.isSmallScreen(context)
        ? Padding(
            padding: EdgeInsets.only(top: screenSize.height / 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: screenSize.height * .40,
                  child: Image.asset('assets/images/RCRDR.png'),
                ),
                SizedBox(height: screenSize.height / 12),
                Text(
                  'RCRDR',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Monument',
                      fontWeight: FontWeight.w700,
                      fontSize: 39,
                      height: .9),
                ),
                // SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // SizedBox(width: screenSize.width / 5),
                    Text(
                      'by',
                      style: TextStyle(
                        color: Colors.white,
                        // height: .4,
                        fontSize: 25,
                        fontFamily: 'Thunder',
                      ),
                    ),
                    SizedBox(width: screenSize.width / 100),
                    Text(
                      'NMUSICC',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Black',
                        fontSize: 25,
                        height: 1,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ConstrainedBox(
                      constraints:
                          BoxConstraints.tightFor(width: 170, height: 35),
                      child: OutlinedButton(
                        child: Text(
                          'View code on GitHub',
                          style: TextStyle(fontSize: 9),
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.deepOrangeAccent,
                          // backgroundColor: Colors.teal,
                          side:
                              BorderSide(color: Colors.pink[800]!, width: 1.5),
                        ),
                        onPressed: _launchRCRDR,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        : Container(
            // color: Colors.black,
            width: 410,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'RCRDR',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Monument',
                          fontWeight: FontWeight.w700,
                          fontSize: 50,
                          height: .9),
                    ),
                    // SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        // SizedBox(width: screenSize.width / 5),
                        Text(
                          'by',
                          style: TextStyle(
                            color: Colors.white,
                            // height: .4,
                            fontSize: 23,
                            fontFamily: 'Thunder',
                          ),
                        ),
                        SizedBox(width: screenSize.width / 100),
                        Text(
                          'NMUSICC',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Black',
                            fontSize: 25,
                            height: 1,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ConstrainedBox(
                          constraints:
                              BoxConstraints.tightFor(width: 218, height: 35),
                          child: OutlinedButton(
                            child: Text('View code on GitHub'),
                            style: OutlinedButton.styleFrom(
                              primary: Colors.deepOrangeAccent,
                              // backgroundColor: Colors.teal,
                              side: BorderSide(
                                  color: Colors.pink[800]!, width: 1.5),
                            ),
                            onPressed: _launchRCRDR,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: screenSize.height / 7, right: 1),
                        child: SizedBox(
                          // width: screenSize.height * .5,
                          height: screenSize.height * .75,
                          child: Image.asset('assets/images/rcrdr.png'),
                        ),
                      ),
                    ),
                    Expanded(child: SizedBox(width: screenSize.width * .8)),
                  ],
                ),
              ],
            ),
          );
  }
}
