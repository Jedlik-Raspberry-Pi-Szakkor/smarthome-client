import 'package:smarthome/blocs/room_bloc.dart';
import 'package:bloc/bloc.dart';

class ChangeLight{
  Room room = Room.Haloszoba;
  bool value = false;
  bool roomChange = false;

  ChangeLight({
    this.value,
    this.room,
    this.roomChange,
  });
}

class LightBloc extends Bloc<ChangeLight, bool>{
  @override
  // TODO: implement initialState
  bool get initialState => false;

  Map<Room, bool> _lights = {
    Room.Haloszoba: false,
    Room.Konyha: false,
    Room.Nappali: false,
    Room.Vendegszoba: false,
  };

  Room _room = Room.Nappali;

  @override
  Stream<bool> mapEventToState(ChangeLight event) async* {
    if (event.roomChange) {
      _room = event.room;
    }else{
      _lights[_room] = event.value;
    }
    yield _lights[_room];

  }


}