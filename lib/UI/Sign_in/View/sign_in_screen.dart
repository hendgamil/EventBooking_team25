import 'package:eventbooking_team25/UI/Sign_in/View/reuseable_widget/buttom_sign_in.dart';
import 'package:eventbooking_team25/UI/Sign_in/View/reuseable_widget/textformfield_widget.dart';
import 'package:eventbooking_team25/UI/Sign_up/view/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/Sign_in_cubit.dart';
import '../cubit/states_cubit.dart';

class Signin_Screen extends StatelessWidget {
  static const routeName = "Sign_in";

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return BlocProvider(
      create: (BuildContext context) => Siginn_screen(),
      child: BlocConsumer<Siginn_screen, states>(
        listener: (BuildContext context, Object? state) {},
        builder: (BuildContext context, state) {
          var cubit = Siginn_screen.get(context);
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Center(child: Image.asset('assets/images/Group.png')),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(
                        child: Text('EventHub', style: TextStyle(fontSize: 33)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Sign in',
                        style: TextStyle(fontSize: 24),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Form(
                        key: cubit.mykey,
                        child: Column(
                          children: [
                            Textformfield_widget(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              controller: cubit.emailcontroller,
                              hinttext: 'abc@email.com',
                              prefixIcon: Icons.email,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Textformfield_widget(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your password';
                                }
                                return null;
                              },
                              hinttext: 'Your password',
                              prefixIcon: Icons.lock,
                              controller: cubit.passwordcontroller,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Switch(
                            activeTrackColor: const Color(0xff5669FF),
                            activeColor: Colors.white,
                            value: cubit.selected,
                            onChanged: (bool value) {
                              cubit.selectedSwitch(value);
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Remember Me',
                            style: TextStyle(fontSize: 15),
                          ),
                          const SizedBox(
                            width: 55,
                          ),
                          const Text(
                            'Forgot Password?',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            if (cubit.mykey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUp_screen(),
                                ),
                              );
                            }
                          },
                          child: Container(
                            height: mediaQuery.height / 15,
                            width: mediaQuery.width / 1.5,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: const Color(0xff5669FF),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Expanded(
                                  child: Center(
                                    child: Text(
                                      'SIGN IN',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 28,
                                  width: 28,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff3D56F0),
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0x372d3fb7),
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(child: Text('OR')),
                      const SizedBox(
                        height: 10,
                      ),
                      ButtomSign_in(
                          text: 'Login With Google',
                          image: 'assets/images/Group 18559.png'),
                      const SizedBox(
                        height: 10,
                      ),
                      ButtomSign_in(
                          text: 'Login With Google',
                          image: 'assets/images/Group 18557.png'),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Don’t have an account?'),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Sign up'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
