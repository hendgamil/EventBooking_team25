

import 'package:flutter_bloc/flutter_bloc.dart';

import 'event_states.dart';

class Events extends Cubit<States>{
  Events() : super (InitialState());
  static Events get(context) => BlocProvider.of(context);
  String num = "" ;

}