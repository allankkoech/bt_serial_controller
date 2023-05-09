import 'package:flutter/material.dart';

const int mobileWidth = 700;
const int desktopWidth = 900;

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {Key? key,
      required this.mobileWidget,
      required this.tabletWidget,
      required this.desktopWidget})
      : super(key: key);

  final Widget mobileWidget;
  final Widget tabletWidget;
  final Widget desktopWidget;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileWidget;
        } else if (constraints.maxWidth >= mobileWidth &&
            constraints.maxWidth <= desktopWidth) {
          return tabletWidget;
        } else {
          return desktopWidget;
        }
      },
    );
  }
}
