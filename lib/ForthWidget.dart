import 'package:flutter/material.dart';

List logistics = ["Forklift Operator Certification", "First Aid/CPR Certification", "CDL", "HVAC"];

List manufacturing = ["Aerospace", "Wood Working"];

List experiences = ["<1year","1-3 years","3-5 years","5-10 years",">10 years"];


class ForthWidget extends StatefulWidget {
  @override
  _ForthWidgetState createState() => _ForthWidgetState();
}

class _ForthWidgetState extends State<ForthWidget> {


  List<bool> isCheckedList = List.generate(logistics.length, (index) => false);

  double gridHeight = 45.0*((logistics.length/2).toInt());


  final _formKey = GlobalKey<FormState>();

  String locationString = '';

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
              "A few more questions and we are done!",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,// Set the font size
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
                      Expanded(
                          child:
                          Text(
                            "How many years of experience do you have in your chosen field?",
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,// Set the font size
                            ),
                          )
                      )
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    height: 55,
                    padding: EdgeInsets.all(4.0),
                    child:  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: experiences.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.all(5.0),
                            // width: 100.0, // Set the width of each item
                            margin: EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              color: Colors.white, // Set the background color
                              borderRadius: BorderRadius.circular(6.0), // Set the corner radius
                            ),// Set the background color or any other styling
                            child: Center(
                              child: Text(
                                experiences[index],
                                // style: TextStyle(color: Colors.white),
                              ),
                            ),
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
                      Expanded(
                          child:
                          Text(
                            "What is your current location or preferred work location?",
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,// Set the font size
                            ),
                          )
                      )
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    padding: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: Colors.white, // Set the background color
                      borderRadius: BorderRadius.circular(12.0), // Set the corner radius
                    ),
                    child:  Row(
                      children: [
                        IconButton(
                          icon: Image.asset('assets/images/Location.png', width: 25, height: 25),
                          onPressed: () {
                            // Add functionality for the leading icon here
                          },
                        ),
                        Expanded(
                            child:
                            Text(
                              locationString,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.normal,// Set the font size
                              ),
                            )
                        )
                      ],
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
                      Expanded(
                          child:
                          Text(
                        "Do you have any relevant certifications or licenses?",
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.normal,// Set the font size
                        ),
                      )
                      )
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
                          mainAxisExtent: 45
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
          ],
        ),
      ),
    );
  }
}

