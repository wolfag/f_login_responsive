import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    super.key,
    required this.lScreen,
    this.mScreen,
    this.sScreen,
  });

  final Widget lScreen;
  final Widget? mScreen;
  final Widget? sScreen;

  static bool isSScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }

  static bool isLScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isMScreen(BuildContext context) {
    return MediaQuery.of(context).size.width <= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return lScreen;
        }
        if (constraints.maxWidth >= 600) {
          return mScreen ?? lScreen;
        }
        return sScreen ?? lScreen;
      },
    );
  }
}
