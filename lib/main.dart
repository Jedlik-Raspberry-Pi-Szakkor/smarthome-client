import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grpc/grpc.dart';
import 'package:provider/provider.dart';

import 'alarm_page.dart';
import 'blocs/alarm_bloc.dart';
import 'blocs/light_bloc.dart';
import 'blocs/room_bloc.dart';
import 'blocs/routines_bloc.dart';
import 'generated/house.pbgrpc.dart';
import 'music_page.dart';
import 'room_page.dart';
import 'routines_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  static final String title = "Okos ház model projekt";
  static final String IP_ADDRESS = "192.168.42.122";
  
  static HouseControllerClient houseController;

  RoomBloc _roomBloc;
  LightBloc _lightBloc;
  RoutinesBloc _routinesBloc;
  AlarmBloc _alarmBloc;

  MyApp(){
    var channel = ClientChannel(IP_ADDRESS, port: 5555, options: ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ));
    houseController = HouseControllerClient(channel);
    houseController.subscribe(Empty()).listen((event){
      print(event);
      if(event.lightChangeEvent != null){
        _lightBloc.add(ChangeLight(
          value: event.lightChangeEvent.isOn,
          roomChange: false,
          room: toRoom(event.lightChangeEvent.room),
        ));
        return; 
      }
    });
    
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<HouseControllerClient>(
      builder: (_)=>MyApp.houseController,
      child: MultiBlocProvider(
          providers: [
            //Register Bloc providers
            BlocProvider<RoomBloc>(builder: (_)=>_roomBloc=RoomBloc()),
            BlocProvider<LightBloc>(builder: (_)=>_lightBloc=LightBloc()),
            BlocProvider<RoutinesBloc>(builder: (_)=>_routinesBloc=RoutinesBloc()),
            BlocProvider<AlarmBloc>(builder: (_)=>_alarmBloc=AlarmBloc()),
          ],
          child: MaterialApp(
            title: title,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            routes: {
              "/": (_) => new RoomsPage(),
              "/rooms": (_) => new RoomsPage(),
              "/alarm": (_) => new AlarmPage(),
              "/routines": (_) => new RoutinesPage(),
              "/music": (_) => new MusicPage(),
            },
            initialRoute: "/",
          ),
        )
      
    );
  }
}

