import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class StartBottomSheetWidget extends StatelessWidget {
  const StartBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    var primaryColor = const Color(0XFF3F38DD);
    double currentIndex = 0;

    return Container(
      padding: EdgeInsets.only(top: 20),
      color: primaryColor,
      height: mediaQuery.height * 0.32,
      width: mediaQuery.width ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 20 ,horizontal: 65
            ),
            child: Text('Explore Upcoming and Nearby Events',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
            vertical: 6,
            horizontal: 30,
            ),
            child: Text(' In publishing and graphic design, '
                'Lorem is a placeholder text commonly ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Skip',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                ),
            DotsIndicator(
              dotsCount: 3,
              position: currentIndex,
              decorator: DotsDecorator(
                spacing: const EdgeInsets.all(10.0),
              ),
            ),
                /*InkWell(
                  onTap: (){
                    currentIndex++;
                    showModalBottomSheet(
                        context: context,
                        builder:  (context) => const StartBottomSheetWidget()
                    );
                  },
                  child:*/
                  Text('Next',
                  style: TextStyle(
                  color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

