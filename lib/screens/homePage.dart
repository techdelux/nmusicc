import 'package:nmusicc/views/topWidget.dart';
import 'package:flutter/material.dart';
// import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:nmusicc/widgets/topBar.dart';
import 'package:nmusicc/widgets/responsive.dart';
// import 'package:nmusicc/widgets/floating_quick_access_bar.dart';
import 'package:nmusicc/widgets/featured_heading.dart';
import 'package:nmusicc/widgets/featured_tiles.dart';
import 'package:nmusicc/widgets/bottom_bar.dart';
import 'package:nmusicc/widgets/web_scrollbar.dart';
import 'package:nmusicc/widgets/slides.dart';
import 'package:nmusicc/widgets/destination_heading.dart';

class HomePage extends StatefulWidget {
  static const String route = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController? _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController!.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController!.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        // ? _scrollPosition / (screenSize.height * 0.40)
        // : 1;
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              backgroundColor: Theme.of(context).backgroundColor,
              // backgroundColor: Colors.black,
              elevation: 0,
              centerTitle: true,
              title: (Text(
                'NMUSICC',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Black',
                  letterSpacing: 1,
                  fontSize: 25,
                ),
              )),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: TopBar(_opacity),
            ),
      body: WebScrollbar(
        color: Colors.grey[800]!,
        backgroundColor: Colors.transparent,
        width: 10,
        heightFraction: 0.5,
        controller: _scrollController!,
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    child: SizedBox(
                      height: screenSize.height,
                      width: screenSize.width,
                      child: Image.asset(
                        'assets/images/mix.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      // This SizedBox() widget is here to substitute the FloatingQuickAccessBar().
                      SizedBox(
                        height: screenSize.height,
                        child: RCRDRView(),
                      ),
                      // SizedBox(height: 25),

                      // FloatingQuickAccessBar(screenSize: screenSize),
                      Column(
                        children: [
                          SizedBox(height: screenSize.height / 15),
                          SlidesHeading(screenSize: screenSize),
                          // SizedBox(height: 25),
                          Container(
                            height: 280,
                            width: screenSize.width,
                            child: SliderDelux(),
                          ),
                        ],
                      ),
                      // SizedBox(height: screenSize.height / 9),
                      // SizedBox(height: 70),
                      Container(
                        child: Column(
                          children: [
                            FeaturedHeading(screenSize: screenSize),
                            SizedBox(height: screenSize.height / 25),
                            FeaturedTiles(screenSize: screenSize),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: screenSize.height / 8),
              // DestinationHeading(screenSize: screenSize),
              // DestinationCarousel(),
              // SizedBox(height: screenSize.height / 10),

              // SizedBox(
              //   height: 240,
              //   width: screenSize.width,
              //   child: SliderDelux(),
              // ),
              SizedBox(height: 25),

              BottomBar(),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
