import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

      ),
      floatingActionButton: FloatingActionButton
        (
        child:
        Icon(Icons.open_in_new),
        onPressed: ()
        {
          showModalBottomSheet(
            backgroundColor: Colors.indigoAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30.0),
              ),
            ),
              context: context,
              builder: (context) => Container(
                height: 200.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'To Look UP More Events or',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Activities Nearby By Map',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'In publishing and graphic design, Lorem is',
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                        'a placeholder text commonly',
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                       Padding(
                         padding: const EdgeInsets.all(25.0),
                        child:Row(
                           // mainAxisAlignment: MainAxisAlignment.start,
                           // crossAxisAlignment: CrossAxisAlignment.end,
                         children: [
                           Expanded(
                             child: Text(
                               'Skip',
                               style: TextStyle(
                                 fontSize: 20.0,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.grey[400],
                               ),
                             ),
                           ),
                           Expanded(
                             child: Text(
                               'Next',
                               style: TextStyle(
                                 fontSize: 20.0,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                               ),
                             ),
                           ),

                         ],
                       ),
              ),
                  ],
                ),
              ),
          );
        },
      ),
      body: Column(
        children: [
          Image(
              image: AssetImage('images/Group 33331.png'),
            height: 457.0,
            width: 375.0,
          ),


        ],
      ),
    );
  }
}
