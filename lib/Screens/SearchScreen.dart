import 'package:doctor_babu/Colors.dart';
import 'package:doctor_babu/Components/DropDownButtonWidget.dart';
import 'package:doctor_babu/Components/MainContainer.dart';
import 'package:doctor_babu/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Search Doctor",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: MyColors.primary),
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.close_rounded,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const DropDownButtonWidget(
                    iconData: Icons.search_rounded, title: "Specialization"),
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
                            const MaterialStatePropertyAll(MyColors.primary),
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return MyColors.primary.withOpacity(0.2); //<-- SEE HERE
                            }
                            return null; // Defer to the widget's default.
                          },
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Find Doctor",
                          style: TextStyle(fontSize: 22),
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
