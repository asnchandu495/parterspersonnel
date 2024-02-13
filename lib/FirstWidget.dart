import 'package:flutter/material.dart';


class FirstWidget extends StatefulWidget {
  @override
  _FirstWidgetState createState() => _FirstWidgetState();
}

class _FirstWidgetState extends State<FirstWidget> {

  final String titleString = "Welcome to Partners Personnel";
  final String subString = "We're excited to connect with talented individuals like you who are ready to take the next step in their career journey.\n\nTo get started, we just need some basic information to match you with the perfect job opportunities.";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        // First Part
        Container(
          // color: Colors.blue,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.fromLTRB(16, 18, 16, 18),
          child: Text(
            titleString,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,// Set the font size
            ),
          ),
        ),
        // Divider
        VerticalDivider(
          color: Colors.black,
          thickness: 1.0,
        ),
        // Second Part
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/homescreen.png', // Replace with your asset path
            height: 200.0, // Set the height
          ),
        ),
        VerticalDivider(
          color: Colors.black,
          thickness: 1.0,
        ),
        // Second Part
        Container(
          // color: Colors.blue,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 5),
          child: Text(
            subString,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    );
  }

}