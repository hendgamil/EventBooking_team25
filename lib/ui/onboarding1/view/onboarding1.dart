import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/event_cubit.dart';
import '../cubit/event_states.dart';

class Event extends StatelessWidget {
  const Event({super.key});
  static const routeName = "Home Page";
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var primaryColor = const Color(0XFF3F38DD);

    return BlocProvider(
      create: (context) => Events(),
      child: BlocConsumer<Events, States>(
        listener: (context, state) {},
        builder: (context, state) {
          var event = Events.get(context);
          return Scaffold(
            // appBar: AppBar(backgroundColor: Colors.white12,),

            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 26,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SizedBox(
                      width: mediaQuery.width * 6,
                      height: mediaQuery.height * 0.3,
                      child: Image.asset(
                        'assets/images/Cairokee.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // color: Colors.grey.withOpacity(0.4),
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 8),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: mediaQuery.width * 0.015,
                              ),
                              Text(
                                event.num,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: mediaQuery.width * 0.7,
                              ),
                              const Icon(
                                Icons.signal_cellular_alt,
                                color: Colors.white,
                                size: 17,
                              ),
                              SizedBox(
                                width: mediaQuery.width * 0.015,
                              ),
                              const Icon(
                                Icons.wifi,
                                color: Colors.white,
                                size: 17,
                              ),
                              SizedBox(
                                width: mediaQuery.width * 0.015,
                              ),
                              const Icon(
                                CupertinoIcons.battery_full,
                                color: Colors.white,
                                size: 17,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: mediaQuery.width * 0.038,
                              ),
                              const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 25,
                              ),
                              SizedBox(
                                width: mediaQuery.width * 0.04,
                              ),
                              const Text(
                                'Event Details',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: mediaQuery.width * 0.35,
                              ),
                              Container(
                                color: Colors.grey,
                                height: mediaQuery.height * 0.045,
                                width: mediaQuery.width * 0.11,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 210,
                      left: 50,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        height: mediaQuery.height * 0.08,
                        width: mediaQuery.width * 0.77,
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 65.0),
                                  child: CircleAvatar(
                                    child:
                                        Image.asset('assets/images/Oval_3.png'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                    child:
                                        Image.asset('assets/images/Oval_2.png'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: CircleAvatar(
                                    child:
                                        Image.asset('assets/images/Oval_1.png'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: mediaQuery.width * 0.03,
                            ),
                            Text(
                              '+20k Going',
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: mediaQuery.width * 0.1,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: primaryColor,
                              ),
                              width: mediaQuery.width * 0.14,
                              height: mediaQuery.height * 0.03,
                              child: const Center(
                                  child: Text(
                                'Invite',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(24),
                  child: Text(
                    'CairoKee Empire 5th Edition',
                    style: TextStyle(
                      color: Color(0XFF120D26),
                      fontWeight: FontWeight.w400,
                      fontSize: 45,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.grey,
                      child: ImageIcon(
                        AssetImage('assets/images/Calendar.png',),
                          color: primaryColor,
                          size: 40,
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
