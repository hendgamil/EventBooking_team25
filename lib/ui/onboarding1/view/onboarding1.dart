import 'dart:async';

import 'package:eventbooking_team25/ui/onboarding1/view/event_details_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/event_cubit.dart';
import '../cubit/event_states.dart';
import 'botom_sheet_widget.dart';

class Event extends StatelessWidget {
  const Event({super.key});
  static const routeName = "Home Page";

  get onOptionTaped => null;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var primaryColor = const Color(0XFF3F38DD);

    Timer(const Duration(seconds: 1),(){
     showModalBottomSheet(context: context,
         builder: (context) => const StartBottomSheetWidget()
     );
    });

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
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80)
                      ),
                      width: mediaQuery.width * 6,
                      height: mediaQuery.height * 0.3,
                      child: Image.asset(
                        'assets/images/Cairokee.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80)
                      ),
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
                                '9:00',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: mediaQuery.width * 0.65,
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
                              Padding(
                                padding: const EdgeInsets.only(left: 80),
                                child: Container(  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey.withOpacity(0.65),
                                ),
                                  height: mediaQuery.height * 0.045,
                                  width: mediaQuery.width * 0.11,
                                  child: Icon(Icons.bookmark,color: Colors.white,),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 200,
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
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: primaryColor,
                              ),
                              width: mediaQuery.width * 0.14,
                              height: mediaQuery.height * 0.03,
                              margin: EdgeInsets.only(left: 12),
                              child: const Center(
                                child: Text(
                                  'Invite',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 24,right: 24,top: 35),
                  child: Text(
                    'CairoKee Empire 5th Edition',
                    style: TextStyle(
                      color: Color(0XFF120D26),
                      fontWeight: FontWeight.w400,
                      fontSize: 40,
                    ),
                  ),
                ),
                EventDetails(
                  icon: Image.asset('assets/images/Calendar.png'),
                  title: const Text(
                    '27 jul, 2023',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  date: const Text(
                    'Tuesday, 4:00PM - 9:00PM',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF747688),
                    ),
                  ),
                ),
                EventDetails(
                  icon: Image.asset('assets/images/Location.png'),
                  title: const Text(
                    'Al-Manara Arena',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  date: const Text(
                    'Al-Manara Arina',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF747688),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void showStartBottomSheet(context) {
    showModalBottomSheet(
        context: context, builder: (context) => const StartBottomSheetWidget());
  }
}
