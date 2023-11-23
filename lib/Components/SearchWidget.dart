import 'package:doctor_babu/Screens/SearchScreen.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          debugPrint("hello");
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const SearchScreen()));
          // You can add any action you want when the Container is tapped
        },
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: Colors.white, // Default background color
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [

                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color(0xffbd7eff),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Search ...",
                  style: TextStyle(
                      color: Color(0xffbd7eff),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      fontFamily: "Roboto"
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
