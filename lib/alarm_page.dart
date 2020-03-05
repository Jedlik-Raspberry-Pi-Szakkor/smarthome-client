import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_drawer.dart';
import 'blocs/alarm_bloc.dart';
import 'named_page.dart';

class AlarmPage extends StatelessWidget implements NamedPage {

  @override
  Widget build(BuildContext context) {

    var alarms = [
      "2019-10-17 16:45",
      "2019-10-17 16:45",
      "2019-10-17 16:45",
      "2019-10-17 16:45",
      "2019-10-17 16:45",
      "2019-10-17 16:45",
      "2019-10-17 16:45",
      "2019-10-17 16:45",
      "2019-10-17 16:45",
      "2019-10-17 16:45",
      "2019-10-17 16:45",
      "2019-10-17 16:45",
      "2019-10-17 16:45",
    ];

    void _changeAlarmOn(BuildContext context, bool isOn){
      BlocProvider.of<AlarmBloc>(context).add(isOn);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(this.GetName()),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.delete),
            onPressed: (){
              debugPrint("Deleting all alarms");
            },
            )
        ],
      ),
      drawer: AppDrawer(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.vpn_key),
        tooltip: "Riasztó elhallgattatása",
      ),
      
      body: Container(
        child: Column(
          
          children: <Widget>[
            ListTile(
              title: Text("Élesítve?"),
              trailing: BlocBuilder<AlarmBloc, bool>(
                builder: (context, isAlarmOn) {
                  return Switch(
                    value: isAlarmOn,
                    onChanged: (isOn){_changeAlarmOn(context, isOn);},
                  );
                }
              ),
              dense: true,
            ),
            Divider(),
            Expanded(
              child: ListView(
                children: alarms.map((a)=>ListTile(
                    title: Text(a),
                  )).toList()
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  String GetName() {
    return "Riasztó";
  }
}