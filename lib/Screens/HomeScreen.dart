import 'package:doctor_babu/Colors.dart';
import 'package:doctor_babu/Components/SearchBoxComp.dart';
import 'package:doctor_babu/Screens/DetailsScreeen.dart';
import 'package:doctor_babu/Screens/SearchScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Components/DropDownButtonWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: MyColors.background,
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // *****************  Greeting Text ****************
              const Text(
                "Hello,",
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              const Text(
                "Lets Find Doctor",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),

              // ************************************     Search Button ***************************
              GestureDetector(
                onTap: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => const AlertDialog(
                    title: Text("Lets Search"),
                    titleTextStyle:
                        TextStyle(color: Colors.black87, fontSize: 18,fontWeight: FontWeight.w500),
                    titlePadding: EdgeInsets.all(10),
                    contentPadding: EdgeInsets.zero,
                    content: SearchBoxComp(),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(top: 30, bottom: 30),
                  decoration: const BoxDecoration(
                      color: MyColors.secondary,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Search ...",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.filter_list_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
              // ********************  Doctor List ****************
              const Text(
                "Doctor List",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              ),
              // ******************** List Of Doctors **************
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                              color: MyColors.secondary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //  ************************ Image ********************************
                              Container(
                                decoration: const BoxDecoration(
                                  color: MyColors.primary,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Image.asset("assets/images/dr-boy.png",
                                    height: 70, width: 70, fit: BoxFit.cover),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Dr.Naruto uzumaki",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Child",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        VerticalDivider(
                                          thickness: 1,
                                        ),
                                        Text(
                                          "Medicine",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.medical_services_rounded,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "5yrs",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                              color: MyColors.secondary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //  ************************ Image ********************************
                              Container(
                                decoration: const BoxDecoration(
                                  color: MyColors.primary,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Image.asset("assets/images/dr-girl.png",
                                    height: 70, width: 70, fit: BoxFit.cover),
                              ),
                              const SizedBox(
                                width: 10,
                              ),

                              /*   **********************************************

                          Doctor Name, Specialization and  years of Experience

                     ***************************************************  */

                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // **************** Doctor Name *****************************
                                  Text(
                                    "Dr.sakura haruno ",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  // **************  Specialization List ************************
                                  IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Child",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        VerticalDivider(
                                          thickness: 1,
                                        ),
                                        Text(
                                          "Medicine",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),

                                  // **********************  Doctor Experience **************
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.medical_services_rounded,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "5yrs",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                              color: MyColors.secondary,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //  ************************ Image ********************************
                              Container(
                                decoration: const BoxDecoration(
                                  color: MyColors.primary,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Image.asset("assets/images/dr-boy.png",
                                    height: 70, width: 70, fit: BoxFit.cover),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Dr.Naruto uzumaki",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Child",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        VerticalDivider(
                                          thickness: 1,
                                        ),
                                        Text(
                                          "Medicine",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.medical_services_rounded,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "5yrs",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                              color: MyColors.secondary,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //  ************************ Image ********************************
                              Container(
                                decoration: const BoxDecoration(
                                  color: MyColors.primary,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Image.asset("assets/images/dr-girl.png",
                                    height: 70, width: 70, fit: BoxFit.cover),
                              ),
                              const SizedBox(
                                width: 10,
                              ),

                              /*   **********************************************

                          Doctor Name, Specialization and  years of Experience

                     ***************************************************  */

                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // **************** Doctor Name *****************************
                                  Text(
                                    "Dr.sakura haruno ",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  // **************  Specialization List ************************
                                  IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Child",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        VerticalDivider(
                                          thickness: 1,
                                        ),
                                        Text(
                                          "Medicine",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),

                                  // **********************  Doctor Experience **************
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.medical_services_rounded,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "5yrs",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                              color: MyColors.secondary,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //  ************************ Image ********************************
                              Container(
                                decoration: const BoxDecoration(
                                  color: MyColors.primary,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Image.asset("assets/images/dr-boy.png",
                                    height: 70, width: 70, fit: BoxFit.cover),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Dr.Naruto uzumaki",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Child",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        VerticalDivider(
                                          thickness: 1,
                                        ),
                                        Text(
                                          "Medicine",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.medical_services_rounded,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "5yrs",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                              color: MyColors.secondary,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //  ************************ Image ********************************
                              Container(
                                decoration: const BoxDecoration(
                                  color: MyColors.primary,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Image.asset("assets/images/dr-girl.png",
                                    height: 70, width: 70, fit: BoxFit.cover),
                              ),
                              const SizedBox(
                                width: 10,
                              ),

                              /*   **********************************************

                          Doctor Name, Specialization and  years of Experience

                     ***************************************************  */

                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // **************** Doctor Name *****************************
                                  Text(
                                    "Dr.sakura haruno ",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  // **************  Specialization List ************************
                                  IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Child",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        VerticalDivider(
                                          thickness: 1,
                                        ),
                                        Text(
                                          "Medicine",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),

                                  // **********************  Doctor Experience **************
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.medical_services_rounded,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "5yrs",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                              color: MyColors.secondary,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //  ************************ Image ********************************
                              Container(
                                decoration: const BoxDecoration(
                                  color: MyColors.primary,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Image.asset("assets/images/dr-boy.png",
                                    height: 70, width: 70, fit: BoxFit.cover),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Dr.Naruto uzumaki",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Child",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        VerticalDivider(
                                          thickness: 1,
                                        ),
                                        Text(
                                          "Medicine",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.medical_services_rounded,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "5yrs",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                              color: MyColors.secondary,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //  ************************ Image ********************************
                              Container(
                                decoration: const BoxDecoration(
                                  color: MyColors.primary,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Image.asset("assets/images/dr-girl.png",
                                    height: 70, width: 70, fit: BoxFit.cover),
                              ),
                              const SizedBox(
                                width: 10,
                              ),

                              /*   **********************************************

                          Doctor Name, Specialization and  years of Experience

                     ***************************************************  */

                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // **************** Doctor Name *****************************
                                  Text(
                                    "Dr.sakura haruno ",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  // **************  Specialization List ************************
                                  IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Child",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        VerticalDivider(
                                          thickness: 1,
                                        ),
                                        Text(
                                          "Medicine",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),

                                  // **********************  Doctor Experience **************
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.medical_services_rounded,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "5yrs",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                              color: MyColors.secondary,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //  ************************ Image ********************************
                              Container(
                                decoration: const BoxDecoration(
                                  color: MyColors.primary,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Image.asset("assets/images/dr-boy.png",
                                    height: 70, width: 70, fit: BoxFit.cover),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Dr.Naruto uzumaki",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Child",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        VerticalDivider(
                                          thickness: 1,
                                        ),
                                        Text(
                                          "Medicine",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.medical_services_rounded,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "5yrs",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                              color: MyColors.secondary,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //  ************************ Image ********************************
                              Container(
                                decoration: const BoxDecoration(
                                  color: MyColors.primary,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Image.asset("assets/images/dr-girl.png",
                                    height: 70, width: 70, fit: BoxFit.cover),
                              ),
                              const SizedBox(
                                width: 10,
                              ),

                              /*   **********************************************

                          Doctor Name, Specialization and  years of Experience

                     ***************************************************  */

                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // **************** Doctor Name *****************************
                                  Text(
                                    "Dr.sakura haruno ",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  // **************  Specialization List ************************
                                  IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Child",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        VerticalDivider(
                                          thickness: 1,
                                        ),
                                        Text(
                                          "Medicine",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),

                                  // **********************  Doctor Experience **************
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.medical_services_rounded,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "5yrs",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                              color: MyColors.secondary,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //  ************************ Image ********************************
                              Container(
                                decoration: const BoxDecoration(
                                  color: MyColors.primary,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Image.asset("assets/images/dr-boy.png",
                                    height: 70, width: 70, fit: BoxFit.cover),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Dr.Naruto uzumaki",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Child",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        VerticalDivider(
                                          thickness: 1,
                                        ),
                                        Text(
                                          "Medicine",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.medical_services_rounded,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "5yrs",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                              color: MyColors.secondary,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //  ************************ Image ********************************
                              Container(
                                decoration: const BoxDecoration(
                                  color: MyColors.primary,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Image.asset("assets/images/dr-girl.png",
                                    height: 70, width: 70, fit: BoxFit.cover),
                              ),
                              const SizedBox(
                                width: 10,
                              ),

                              /*   **********************************************

                          Doctor Name, Specialization and  years of Experience

                     ***************************************************  */

                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // **************** Doctor Name *****************************
                                  Text(
                                    "Dr.sakura haruno ",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  // **************  Specialization List ************************
                                  IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Child",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        VerticalDivider(
                                          thickness: 1,
                                        ),
                                        Text(
                                          "Medicine",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),

                                  // **********************  Doctor Experience **************
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.medical_services_rounded,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "5yrs",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                              color: MyColors.secondary,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //  ************************ Image ********************************
                              Container(
                                decoration: const BoxDecoration(
                                  color: MyColors.primary,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Image.asset("assets/images/dr-boy.png",
                                    height: 70, width: 70, fit: BoxFit.cover),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Dr.Naruto uzumaki",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Child",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        VerticalDivider(
                                          thickness: 1,
                                        ),
                                        Text(
                                          "Medicine",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.medical_services_rounded,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "5yrs",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                              color: MyColors.secondary,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //  ************************ Image ********************************
                              Container(
                                decoration: const BoxDecoration(
                                  color: MyColors.primary,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Image.asset("assets/images/dr-girl.png",
                                    height: 70, width: 70, fit: BoxFit.cover),
                              ),
                              const SizedBox(
                                width: 10,
                              ),

                              /*   **********************************************

                          Doctor Name, Specialization and  years of Experience

                     ***************************************************  */

                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // **************** Doctor Name *****************************
                                  Text(
                                    "Dr.sakura haruno ",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  // **************  Specialization List ************************
                                  IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Child",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        VerticalDivider(
                                          thickness: 1,
                                        ),
                                        Text(
                                          "Medicine",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),

                                  // **********************  Doctor Experience **************
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.medical_services_rounded,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "5yrs",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
