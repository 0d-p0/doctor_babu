import 'package:doctor_babu/Components/IconButtonWidget.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              "Hi,",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffbd7eff),
                  letterSpacing: 2,
                  fontFamily: "Roboto"),
              textAlign: TextAlign.start,
            ),
            Text(
              "Lets Find the Doctor",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color:  Color(0xffD7B1FF),
                  letterSpacing: 2,
                  fontFamily: "Roboto"),
              textAlign: TextAlign.start,
            )
          ],
        ),
      IconButtonWidget(onPressed: (){}, iconSize: 30,
          iconData: Icons.notifications)
      ],
    );
  }
}
