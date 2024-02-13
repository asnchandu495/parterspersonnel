import 'package:flutter/material.dart';

List logistics = ["3PL", "Cold Storage", "Dry Storage", "Office Supply", "furniture", "Warehouse", "Shipping", "Receiving"];

List manufacturing = ["Aerospace", "Wood Working"];


class ThirdWidget extends StatefulWidget {
  @override
  _ThirdWidgetState createState() => _ThirdWidgetState();
}

class _ThirdWidgetState extends State<ThirdWidget> {


  List<bool> isCheckedList = List.generate(logistics.length, (index) => false);

  double gridHeight = 45.0*((logistics.length/2).toInt());

  List<bool> isCheckedListForManu = List.generate(manufacturing.length, (index) => false);

  double gridHeightForManu = 45.0*((manufacturing.length/2).toInt());

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            Text(
              "Select your areas of expertise",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,// Set the font size
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              "Select one or more categories suitable for your search",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.all(16.0), // Adjust padding as needed
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 235, 238), // Set the background color
                borderRadius: BorderRadius.circular(12.0), // Set the corner radius
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 16.0),
                      Image.asset('assets/images/Logistics.png', width: 50, height: 50),
                      SizedBox(width: 16.0),
                      Text(
                        "Logistics & Distribution",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,// Set the font size
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: gridHeight,
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 0,
                          mainAxisExtent: 40
                      ),
                      itemCount: isCheckedList.length,
                      itemBuilder: (context, index) {
                        return CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text(
                              logistics[index],
                            style: TextStyle(
                              fontSize: 13.0,
                            ),
                          ),
                          value: isCheckedList[index],
                          onChanged: (value) {
                            setState(() {
                              isCheckedList[index] = value!;
                            });
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.all(16.0), // Adjust padding as needed
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 235, 238), // Set the background color
                borderRadius: BorderRadius.circular(12.0), // Set the corner radius
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 16.0),
                      Image.asset('assets/images/manufacturing.png', width: 50, height: 50),
                      SizedBox(width: 16.0),
                      Text(
                        "Manufacturing",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,// Set the font size
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: gridHeightForManu,
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 0,
                          mainAxisExtent: 40
                      ),
                      itemCount: isCheckedListForManu.length,
                      itemBuilder: (context, index) {
                        return CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text(
                            manufacturing[index],
                            style: TextStyle(
                              fontSize: 13.0,
                            ),
                          ),
                          value: isCheckedListForManu[index],
                          onChanged: (value) {
                            setState(() {
                              isCheckedListForManu[index] = value!;
                            });
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

