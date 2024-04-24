import 'package:flutter/material.dart';

class EventDetails extends StatelessWidget {
  final Image icon;
  final Text title;
  final Text date;

  const EventDetails({required this.icon,required this.title,required this.date} );

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var primaryColor = const Color(0XFF3F38DD);

    return Padding(
      padding: const EdgeInsets.only(left: 10,top: 10),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.withOpacity(0.25),
            ),
            height: mediaQuery .height * 0.06,
            width: mediaQuery.width * 0.13,
            padding: const EdgeInsets.all(11),
            child: icon
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title,
                date,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
