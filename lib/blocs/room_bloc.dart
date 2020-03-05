import 'package:bloc/bloc.dart';
import 'package:smarthome/generated/house.pb.dart';

enum Room{
  Nappali,
  Konyha,
  Haloszoba,
  Vendegszoba
}

ProtoRoom toProtoRoom(Room room){
  switch (room) {
    case Room.Haloszoba: return ProtoRoom.Haloszoba;
    case Room.Vendegszoba: return ProtoRoom.Vendegszoba;
    case Room.Nappali: return ProtoRoom.Nappali;
    case Room.Konyha: return ProtoRoom.Konyha;
  }
}

Room toRoom(ProtoRoom room){
  switch (room) {
    case ProtoRoom.Haloszoba: return Room.Haloszoba;
    case ProtoRoom.Vendegszoba: return Room.Vendegszoba;
    case ProtoRoom.Nappali: return Room.Nappali;
    case ProtoRoom.Konyha: return Room.Konyha;
  }
}

class RoomBloc extends Bloc<Room, Room>{
  @override
  Room get initialState => Room.Nappali;

  @override
  Stream<Room> mapEventToState(Room event) async* {
    yield event;
  }

}