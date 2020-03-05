import 'package:flutter/material.dart';

import 'app_drawer.dart';
import 'named_page.dart';

class MusicPage extends StatelessWidget implements NamedPage {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.GetName()),
      ),
      drawer: AppDrawer(),
      
    );
  }

  @override
  String GetName() {
    return "Zenék";
  }
}