import 'package:flutter/material.dart';
import 'package:parterspersonnel/FirstWidget.dart';
import 'package:parterspersonnel/ForthWidget.dart';
import 'package:parterspersonnel/NotificationsWidget.dart';
import 'package:parterspersonnel/SecondWidget.dart';
import 'package:parterspersonnel/ThirdWidget.dart';



// class HomeWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Home Widget Content'),
//     );
//   }
// }

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  int _currentIndex = 0;

  List<Widget> _widgets = [
    FirstWidget(),
    SecondWidget(),
    ThirdWidget(),
    ForthWidget()
  ];

  void _nextWidget() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _widgets.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,// Column direction
      children: [
        // First part with flex factor 1
        Expanded(
          flex: 10,
          child:_widgets[_currentIndex],
        ),
        // Second part with flex factor 2
        Expanded(
          flex: 2,
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 150,
              height: 60,
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.indigoAccent;
                      return Color.fromARGB(255, 36, 55, 89); // Use the component's default.
                    },
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0), // Set the border radius
                    ),
                  ),
                ),
                onPressed: () {
                  // Handle button press
                  _nextWidget();

                },
                child: Text(
                    'Next',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // Container(
          //   color: Colors.red,
          //   alignment: Alignment.center,
          //   child: Text('Third Part'),
          // ),
        ),
      ],
    );
  }

}