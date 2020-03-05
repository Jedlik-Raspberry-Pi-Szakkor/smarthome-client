import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/light_bloc.dart';
import 'blocs/room_bloc.dart';

class RoomView extends StatelessWidget {

  void _changeRoom(BuildContext context, Room currentRoom){
    BlocProvider.of<RoomBloc>(context).add(currentRoom);
    BlocProvider.of<LightBloc>(context).add(ChangeLight(roomChange: true, room: currentRoom));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomBloc, Room>(
      builder: (context, currentRoom) {
        return Stack(
          children: <Widget>[
            Image.asset("assets/rooms.png", width: 1080,fit: BoxFit.fill,),
            //Nappali
            SizedBox(
              width: 1080,
              height: 1275,
              child: Container(
                child: RaisedButton(color: currentRoom == Room.Nappali ? Colors.red.withAlpha(128) : Colors.transparent,onPressed: (){_changeRoom(context, Room.Nappali);},),
                padding: EdgeInsets.only(
                  top: 160,
                  bottom: 663,
                  left: 200,
                  right: 646
                ),
              ),
            ),
            //Konyha
            SizedBox(
              width: 1080,
              height: 1275,
              child: Container(
                child: RaisedButton(color: currentRoom == Room.Konyha ? Colors.red.withAlpha(128) : Colors.transparent,onPressed: (){_changeRoom(context, Room.Konyha);},),
                padding: EdgeInsets.only(
                  top: 160,
                  bottom: 663,
                  left: 665,
                  right: 178
                ),
              ),
            ),
            //Hálószoba
            SizedBox(
              width: 1080,
              height: 1275,
              child: Container(
                child: RaisedButton(color: currentRoom == Room.Haloszoba ? Colors.red.withAlpha(128) : Colors.transparent,onPressed: (){_changeRoom(context, Room.Haloszoba);},),
                padding: EdgeInsets.only(
                  top: 628,
                  bottom: 235,
                  left: 200,
                  right: 646
                ),
              ),
            ),
            //Vendégszoba
            SizedBox(
              width: 1080,
              height: 1275,
              child: Container(
                child: RaisedButton(color: currentRoom == Room.Vendegszoba ? Colors.red.withAlpha(128) : Colors.transparent,onPressed: (){_changeRoom(context, Room.Vendegszoba);},),
                padding: EdgeInsets.only(
                  top: 628,
                  bottom: 235,
                  left: 665,
                  right: 178
                ),
              ),
            ),

          ],
        );
      }
    );
  }
}