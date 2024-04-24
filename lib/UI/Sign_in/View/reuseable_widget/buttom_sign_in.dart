import 'package:flutter/material.dart';

class ButtomSign_in extends StatelessWidget {
  String image;
  String text;

  ButtomSign_in({required this.text, required this.image});

  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        child: Card(
          shadowColor: Colors.white,
          elevation: 3,
          child: Container(
            width: 271,
            height: 58,
            //  margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(image),
                const SizedBox(
                  width: 15,
                ),
                Text(text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
