import 'package:flutter/material.dart';

var myDefaultBackground = Colors.grey[300];

var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
);

void nextReplacement(context,MaterialPageRoute page){
  Navigator.pushReplacement(context, page);
}
var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(children: const [
    DrawerHeader(child: Icon(Icons.favorite)),
    ListTile(
      leading: Icon(Icons.home),
      title: Text("D A S H B O A R D"),
    ),
    ListTile(
      leading: Icon(Icons.chat),
      title: Text("M E S S A G E"),
    ),
    ListTile(
      leading: Icon(Icons.settings),
      title: Text("S E T T I N G S"),
    ),
    ListTile(
      leading: Icon(Icons.logout),
      title: Text("L O G O U T"),
    ),
  ]),
);
