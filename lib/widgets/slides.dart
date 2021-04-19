import 'package:flutter/material.dart';
import 'package:wbst/widgets/responsive.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

const _dstrtn = 'https://github.com/techdelux/wbst.git';
const _apnnr = 'https://github.com/techdelux/wbst.git';
const _lmtr = 'https://github.com/techdelux/wbst.git';

void _launchDSTRTN() async => await canLaunch(_dstrtn)
    ? await launch(_dstrtn)
    : throw 'Could not launch $_dstrtn';

void _launchAPNNR() async => await canLaunch(_apnnr)
    ? await launch(_apnnr)
    : throw 'Could not launch $_apnnr';

void _launchLMTR() async => await canLaunch(_lmtr)
    ? await launch(_lmtr)
    : throw 'Could not launch $_lmtr';

class SliderDelux extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CarouselSlider(
          items: [
            //1st Image of Slider
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/distortion.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 170.0),
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[800],
                      ),
                      // onPressed: _launchDSTRTN,
                      onPressed: () {},
                      child: Text('View code on GitHub'),
                    ),
                  ),
                ),
              ],
            ),

            //2nd Image of Slider
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/autopanner.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 170.0),
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[800],
                      ),
                      // onPressed: _launchAPNNR,
                      onPressed: () {},
                      child: Text('View code on GitHub'),
                    ),
                  ),
                ),
              ],
            ),

            //3rd Image of Slider
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/limiter.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 170.0),
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[800],
                      ),
                      // onPressed: _launchLMTR,
                      onPressed: () {},
                      child: Text('View code on GitHub'),
                    ),
                  ),
                ),
              ],
            ),
          ],

          //Slider Container properties
          options: CarouselOptions(
            height: 190.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 700),
            viewportFraction:
                ResponsiveWidget.isSmallScreen(context) ? .8 : .33,
          ),
        ),
      ],
    );
  }
}
