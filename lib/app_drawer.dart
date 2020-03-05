import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {

  _createTile(BuildContext context, String title, String route, bool enabled){
    return ListTile(
      title: Text(title),
      enabled: enabled,
      onTap: () => Navigator.of(context).pushReplacementNamed(route) ,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          _createTile(context, "Szobák", "/rooms", true),
          _createTile(context, "Riasztó", "/alarm", true),
          _createTile(context, "Rutinok", "/routines", true),
          _createTile(context, "Zene", "/music", false),
        ],
      ),
    );
  }
}