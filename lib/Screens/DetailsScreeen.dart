import 'package:doctor_babu/Colors.dart';
import 'package:doctor_babu/Components/MainContainer.dart';
import 'package:doctor_babu/Components/MapViewWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'HomeScreen.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor:MyColors.primary, // You can set any color you want here
    ));
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //     title: const Text(
      //       "Doctor Details",
      //     ),
      //     centerTitle: true,
      //     backgroundColor: MyColors.primary,
      //     elevation: 0,
      //     leading: IconButton(
      //       onPressed: () {
      //         Navigator.pop(context);
      //       },
      //       icon: const Icon(Icons.arrow_back_ios_new),
      //     )),
      body: SafeArea(
        child: Container(
          width: width,
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(color: MyColors.background),
          child: Column(
            children: [
              // ***************************** Doctor Image and Back Button **************************
              Stack(
                children: [
                  Positioned(
                      left: -10,
                      top: 5,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          size: 30,
                          color: Colors.black,
                        ),
                      )),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 220,
                      width: 220,
                      decoration: BoxDecoration(
                          color: const Color(0xffe9defe),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                  SizedBox(
                    height: 220,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                            color: const Color(0xffe0d1fe),
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 220,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                            color: const Color(0xffdac5fe),
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 240,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        "assets/images/dr-boy.png",
                        height: 180,
                        width: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),

              /* ********************* Doctor Details  *****************************
                 Name, fees, Specialization,Experience,
                 Clinic name, Address, Time
                  Locate Clinic Button
              *********************************************************************** */
              Expanded(
                  child: Column(
                children: [
                  /* ********************* Doctor Details  *****************************
                 Name, fees, Specialization,Experience,
                 Clinic name, Address, Time
              *********************************************************************** */
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          // margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                              color: MyColors.secondary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //   ******************* Doctor Name **************
                                  Text(
                                    "Dr.sakura haruno",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  //   ******************* Doctor Fees **************
                                  Text(
                                    "₹400",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //   ******************* Doctor Specialization **************
                                  IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Child",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16),
                                        ),
                                        VerticalDivider(
                                          thickness: 1,
                                        ),
                                        Text(
                                          "Medicine",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //   ******************* Doctor Fees Title **************
                                  Text(
                                    "Fees",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              // **********************  Doctor Experience **************
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.medical_services_rounded,
                                    size: 25,
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
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              // ********************* Clinic Details **********************
                              Row(
                                children: [
                                  Icon(
                                    Icons.notes_rounded,
                                    size: 25,
                                    color: Colors.orangeAccent,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Clinic Details",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w200,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              // ********************* Clinic Name **********************
                              Text(
                                "Purkaite Medical and Diagnostic Center ",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              // ********************* Clinic Address **********************
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.location_city,
                                    size: 25,
                                    color: Colors.orangeAccent,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Kakdwip,near kakdwip Super speciality hospital",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 10,
                              ),

                              // ********************* Doctor show Time List **********************
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.timeline_rounded,
                                    size: 25,
                                    color: Colors.orangeAccent,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Upcoming  Visiting Time",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    size: 25,
                                    color: Colors.orangeAccent,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "22 Nov, wed , 2pm ",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                              // *********** Divider ******************
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                child: Divider(
                                  thickness: 2,
                                  height: 10,
                                ),
                              ),
                              // ********************* Doctor show Time **********************
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    size: 25,
                                    color: Colors.orangeAccent,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "28 Nov, wed , 4pm ",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                child: Divider(
                                  thickness: 2,
                                  height: 10,
                                ),
                              ),
                              // ********************* Doctor show Time **********************
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    size: 25,
                                    color: Colors.orangeAccent,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "28 Nov, wed , 4pm ",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                child: Divider(
                                  thickness: 2,
                                  height: 10,
                                ),
                              ),
                              // ********************* Doctor show Time **********************
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    size: 25,
                                    color: Colors.orangeAccent,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "28 Nov, wed , 4pm ",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                child: Divider(
                                  thickness: 2,
                                  height: 10,
                                ),
                              ),
                              // ********************* Doctor show Time **********************
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    size: 25,
                                    color: Colors.orangeAccent,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "28 Nov, wed , 4pm ",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Locate Clinic Button
                  SizedBox(
                    width: width,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(MyColors.primary),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          )),
                      onPressed: () {},
                      child:const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "L",
                            style: TextStyle(fontSize: 18),
                          ),
                          Icon(Icons.my_location,size: 15,),
                          Text(
                            "cate Clinic",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      )
                    ),
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
