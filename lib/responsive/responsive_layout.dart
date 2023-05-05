import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobialScaffold;
  final Widget tabletScaffold;
  final Widget destopScaffold;

  const ResponsiveLayout({
    super.key,
    required this.mobialScaffold,
    required this.tabletScaffold,
    required this.destopScaffold,
  });
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobialScaffold;
        } else if (constraints.maxWidth < 1100) {
          return tabletScaffold;
        } else {
          return destopScaffold;
        }
      },
    );
  }
}
