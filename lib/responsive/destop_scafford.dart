import 'package:flutter/material.dart';
import 'package:responsive/constants.dart';
import 'package:responsive/pages/form_page.dart';

class DestopScaffold extends StatefulWidget {
  const DestopScaffold({Key? key}) : super(key: key);

  @override
  State<DestopScaffold> createState() => _DestopScaffoldState();
}

class _DestopScaffoldState extends State<DestopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      body: Row(
        children: [
          // open drawer
          myDrawer,
          // rest of code
          FormScafford(),
        ],
      ),
    );
  }
}
