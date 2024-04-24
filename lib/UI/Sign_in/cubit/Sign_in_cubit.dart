import 'package:eventbooking_team25/UI/Sign_in/cubit/states_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Siginn_screen extends Cubit<states> {
  Siginn_screen() : super(InnaitialState());

  static Siginn_screen get(context) => BlocProvider.of(context);
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  GlobalKey<FormState> mykey = GlobalKey<FormState>();
  bool selected = true;

  selectedSwitch(value) {
    selected = value;
    emit(selectedSwitch(value));
  }
}
