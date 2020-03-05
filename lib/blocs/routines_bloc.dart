import 'package:bloc/bloc.dart';

import '../routines_page.dart';

class RoutinesBloc extends Bloc<Routines, Routines>{
  @override
  // TODO: implement initialState
  Routines get initialState => Routines.None;

  @override
  Stream<Routines> mapEventToState(Routines event) async* {
    yield event;
  }
  
}