import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Sign_in/View/reuseable_widget/buttom_sign_in.dart';
import '../../Sign_in/View/reuseable_widget/textformfield_widget.dart';
import '../../Sign_in/View/sign_in_screen.dart';
import '../cubit/Sign_up_cubit.dart';
import '../cubit/states_cubit.dart';

class SignUp_screen extends StatelessWidget {
  static const routeName = "Signup";

  const SignUp_screen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return BlocProvider(
      create: (BuildContext context) => Signup(),
      child: BlocConsumer<Signup, States>(
        listener: (BuildContext context, Object? state) {},
        builder: (BuildContext context, state) {
          var cubit = Signup.get(context);
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sign Up',
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
                            obsure: cubit.passwordVisible,
                            controller: cubit.Fullname,
                            hinttext: 'Full name',
                            prefixIcon: Icons.person,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Textformfield_widget(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                            hinttext: 'abc@email.com',
                            prefixIcon: Icons.email,
                            controller: cubit.emailcontroller,
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
                          const SizedBox(
                            height: 20,
                          ),
                          Textformfield_widget(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your password';
                              }
                              if (value != cubit.passwordcontroller.text) {
                                return 'Not Match';
                              }
                              return null;
                            },
                            // Iconn: cubit.passwordVisible
                            //     ? Icons.visibility
                            //     : Icons.visibility_off,
                            // onClick: cubit.obscuretext(),
                            hinttext: 'Confirm password',
                            prefixIcon: Icons.lock,
                            controller: cubit.confirmpassword,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
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
                                    'SIGN UP',
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
                        const Text('Aleady have an account?'),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Signin_Screen(),
                                ));
                          },
                          child: const Text('Sign in'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
