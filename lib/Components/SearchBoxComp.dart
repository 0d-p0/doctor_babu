import 'package:flutter/material.dart';

import '../Colors.dart';
import 'DropDownButtonWidget.dart';

class SearchBoxComp extends StatelessWidget {
  const SearchBoxComp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const DropDownButtonWidget(
                iconData: Icons.search_rounded,
                title: "Specialization"),
            const SizedBox(
              height: 20,
            ),
            const DropDownButtonWidget(
                iconData: Icons.location_on, title: "Location"),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    backgroundColor:
                    const MaterialStatePropertyAll(
                        MyColors.primary),
                    overlayColor: MaterialStateProperty
                        .resolveWith<Color?>(
                          (Set<MaterialState> states) {
                        if (states
                            .contains(MaterialState.pressed)) {
                          return MyColors.primary
                              .withOpacity(0.2); //<-- SEE HERE
                        }
                        return null; // Defer to the widget's default.
                      },
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Search",
                      style: TextStyle(fontSize: 20),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
