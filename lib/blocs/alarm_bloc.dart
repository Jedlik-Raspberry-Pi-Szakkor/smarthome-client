import 'package:bloc/bloc.dart';

class AlarmBloc extends Bloc<bool, bool>{
  @override
  bool get initialState => true;

  @override
  Stream<bool> mapEventToState(bool event) async* {
    yield event;
  }

}