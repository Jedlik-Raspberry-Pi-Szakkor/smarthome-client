import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_drawer.dart';
import 'blocs/routines_bloc.dart';
import 'named_page.dart';

enum Routines{
  None,
  Morning,
  Work,
  Relax,
  Sleep
}

class RoutinesPage extends StatelessWidget implements NamedPage {

  Widget _createRoutineItem(String title, Routines value, Routines currentValue, void Function(Routines) callback){
    return ListTile(
      title: Text(title),
      trailing: Radio(
        value: value,
        onChanged: callback,
        groupValue: currentValue,
      ),
    );
  }

  void _onSelect(BuildContext context, Routines selected){
    BlocProvider.of<RoutinesBloc>(context).add(selected);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.GetName()),
      ),
      drawer: AppDrawer(),
      body: Container(
        child: BlocBuilder<RoutinesBloc, Routines>(
          builder: (context, routine) {
            return ListView(
              children: <Widget>[
                _createRoutineItem("Egyik sem", Routines.None, routine, (selected){this._onSelect(context, selected);}),
                _createRoutineItem("Reggeli", Routines.Morning, routine, (selected){this._onSelect(context, selected);}),
                _createRoutineItem("Munka", Routines.Work, routine, (selected){this._onSelect(context, selected);}),
                _createRoutineItem("Relax", Routines.Relax, routine, (selected){this._onSelect(context, selected);}),
                _createRoutineItem("Alvás", Routines.Sleep, routine, (selected){this._onSelect(context, selected);}),
              ],
            );
          }
        ),
      ),
    );
  }

  @override
  String GetName() {
    return "Rutinok";
  }
}