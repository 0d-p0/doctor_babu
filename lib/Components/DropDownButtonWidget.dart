import 'package:doctor_babu/Colors.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class MyDropdownButton extends StatefulWidget {
  final IconData iconData;
  final String title;

  const MyDropdownButton(
      {super.key, required this.iconData, required this.title});

  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  String? selectedValue; // Initial selection
  String searchText = '';
  bool isDropdownOpen = false;
  List<String> dropdownItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Row(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color(0xffbd7eff),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      widget.iconData,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: DropdownButtonHideUnderline(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Visibility(
                          visible: selectedValue != null ? true : false,
                          child: Text(
                            widget.title,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1),
                          ),
                        ),
                        Visibility(
                            visible: selectedValue != null ? true : false,
                            child: const SizedBox(
                              height: 10,
                            )),
                        Text(
                          selectedValue != null
                              ? selectedValue!
                              : "Select a ${widget.title}",
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          onTap: () {
            setState(() {
              isDropdownOpen = !isDropdownOpen;
              searchText = "";
            });
          },
        ),
        if (isDropdownOpen)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Search',
                    prefixIcon: Icon(Icons.search),
                  ),
                  onChanged: (text) {
                    setState(() {
                      searchText = text
                          .toLowerCase(); // Convert search text to lowercase
                    });
                  },
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 200),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // Display filtered dropdown items
                        for (String item in dropdownItems)
                          if (searchText.isEmpty ||
                              item.toLowerCase().contains(searchText))
                            ListTile(
                              title: Text(item),
                              onTap: () {
                                setState(() {
                                  selectedValue = item;
                                  isDropdownOpen = false;
                                });
                              },
                            )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}

class DropDownButtonWidget extends StatefulWidget {
  final IconData iconData;
  final String title;

  const DropDownButtonWidget({super.key,required this.iconData, required this.title});

  @override
  State<DropDownButtonWidget> createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  final List<String> items = [
    'A_Item1',
    'A_Item2',
    'A_Item3',
    'A_Item4',
    'B_Item1',
    'B_Item2',
    'B_Item3',
    'B_Item4',
  ];

  String? selectedValue;

  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          iconStyleData: const IconStyleData(
            iconSize: 0
          ),
          items: items
              .map((item) => DropdownMenuItem(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
          },
         customButton:  Container(
           width: double.infinity,
           padding: const EdgeInsets.all(10),
           decoration: const BoxDecoration(
               color: MyColors.secondary,
               borderRadius: BorderRadius.all(Radius.circular(30))),
           child: Row(
             children: <Widget>[
               Container(
                 decoration: const BoxDecoration(
                   borderRadius: BorderRadius.all(Radius.circular(50)),
                   color: MyColors.primary,
                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Icon(
                     widget.iconData,
                     color: Colors.white,
                     size: 25,
                   ),
                 ),
               ),
               const SizedBox(width: 10),
               Expanded(
                 child: DropdownButtonHideUnderline(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Visibility(
                         visible: selectedValue != null ? true : false,
                         child: Text(
                           widget.title,
                           style: const TextStyle(
                               fontSize: 14,
                               fontWeight: FontWeight.w400,
                               letterSpacing: 1),
                         ),
                       ),
                       Visibility(
                           visible: selectedValue != null ? true : false,
                           child: const SizedBox(
                             height: 10,
                           )),
                       Text(
                         selectedValue != null
                             ? selectedValue!
                             : "Select a ${widget.title}",
                         style: const TextStyle(
                             fontSize: 16,
                             fontWeight: FontWeight.w400,
                             letterSpacing: 1),
                       )
                     ],
                   ),
                 ),
               ),
             ],
           ),
         ) ,
          dropdownStyleData: const DropdownStyleData(
            maxHeight: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          


          dropdownSearchData: DropdownSearchData(
            searchController: textEditingController,
            searchInnerWidgetHeight: 50,
            searchInnerWidget: Container(
              height: 50,
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 4,
                right: 8,
                left: 8,
              ),
              child: TextFormField(
                expands: true,
                maxLines: null,
                controller: textEditingController,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 8,
                  ),
                  hintText: 'Search for an item...',
                  hintStyle: const TextStyle(fontSize: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            searchMatchFn: (item, searchValue) {
              return item.value.toString().toLowerCase().contains(searchValue.toLowerCase());
            },
          ),
          //This to clear the search value when you close the menu
          onMenuStateChange: (isOpen) {
            if (!isOpen) {
              textEditingController.clear();
            }
          },
        ),
      ),
    );
  }
}
