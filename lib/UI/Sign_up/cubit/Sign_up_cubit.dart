import 'package:eventbooking_team25/UI/Sign_up/cubit/states_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Signup extends Cubit<States> {
  Signup() : super(InaitialState());

  static Signup get(context) => BlocProvider.of(context);
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController Fullname = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  bool passwordVisible = false;
  GlobalKey<FormState> mykey = GlobalKey<FormState>();

  obscuretext() {
    passwordVisible = !passwordVisible;
    emit(obscuretext());
  }
}
