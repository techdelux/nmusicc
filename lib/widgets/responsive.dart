import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveWidget(
      {Key? key,
      required this.largeScreen,
      this.mediumScreen,
      this.smallScreen})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return largeScreen;
        } else if (constraints.maxWidth <= 1200 &&
            constraints.maxWidth >= 800) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}

class ResponsiveHeight extends StatelessWidget {
  final Widget largeHeight;
  final Widget? mediumHeight;
  final Widget? smallHeight;

  const ResponsiveHeight(
      {Key? key,
      required this.largeHeight,
      this.mediumHeight,
      this.smallHeight})
      : super(key: key);

  static bool isSmallHeight(BuildContext context) {
    return MediaQuery.of(context).size.height < 300;
  }

  static bool isLargeHeight(BuildContext context) {
    return MediaQuery.of(context).size.height > 800;
  }

  static bool isMediumHeight(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.height <= 1000;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxHeight > 1000) {
          return largeHeight;
        } else if (constraints.maxHeight <= 1000 &&
            constraints.maxHeight >= 800) {
          return mediumHeight ?? largeHeight;
        } else {
          return smallHeight ?? largeHeight;
        }
      },
    );
  }
}
