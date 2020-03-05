import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'app_drawer.dart';
import 'blocs/light_bloc.dart';
import 'blocs/room_bloc.dart';
import 'generated/house.pbgrpc.dart';
import 'named_page.dart';
import 'room_view.dart';

class RoomsPage extends StatelessWidget implements NamedPage {

  void _changeLight(BuildContext context, bool isOn){
    LightChangeMessage message = LightChangeMessage();
    message.room =  toProtoRoom(BlocProvider.of<RoomBloc>(context).state);
    message.isOn = isOn;
    Provider.of<HouseControllerClient>(context).changeLight(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.GetName()),
      ),
      drawer: AppDrawer(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              FittedBox(
                child: RoomView(),
                fit: BoxFit.fitWidth,
              ),
              ListTile(
                title: Text("Lámpa"),
                trailing: BlocBuilder<LightBloc, bool>(
                  builder: (context, lightState) {
                    return Switch(
                      value: lightState,
                      onChanged: (isOn){_changeLight(context, isOn);},
                    );
                  }
                )
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  String GetName() {
    return "Szobák";
  }
}