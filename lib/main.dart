import 'package:flutter/material.dart';
import 'package:parterspersonnel/ApplicationsWidget.dart';
import 'package:parterspersonnel/JobsWidget.dart';
import 'package:parterspersonnel/NotificationsWidget.dart';

import 'HomeWidget.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0), // Adjust the height as needed
        child: AppBar(
          toolbarHeight: 96,
          backgroundColor: Color.fromARGB(255, 36, 55, 89),
          title: Container(
            alignment:Alignment.center,
            height: 40,
            child: TextField(
              controller: _searchController,
              textAlignVertical: TextAlignVertical(y:0.8),
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                // suffixIcon: IconButton(
                //   icon: Icon(Icons.clear),
                //   onPressed: () {
                //     _searchController.clear();
                //   },
                // ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                  borderSide: BorderSide.none, // No border on the sides
                ),
              ),
              onChanged: (value) {
                // Handle the search query change
                // You can perform search-related operations here
                print('Search query: $value');
              },
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Image.asset('assets/images/pp_logo.png', width: 30, height: 30),
            onPressed: () {
              // Add functionality for the leading icon here
            },
          ),
          actions: [
            IconButton(
              icon: Image.asset('assets/images/profile logo.png', width: 30, height: 30),
              onPressed: () {
                // Add functionality for the trailing icon here
              },
            ),
            IconButton(
              icon: Image.asset('assets/images/menu_logo.png', width: 30, height: 30),
              onPressed: () {
                // Add functionality for additional trailing icons here
              },
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeWidget(),
          JobsWidget(),
          ApplicationsWidget(),
          NotificationsWidget()
        ],
      ),
      // Center(
      //   child: Text('Content for tab $_currentIndex'),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        // fixedColor: Color.fromARGB(255, 114, 130, 150),
        // backgroundColor: Color(0x728296),
        unselectedItemColor: Colors.white54,
        showUnselectedLabels: true,
        enableFeedback: true,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/carbon_home.png', width: 24, height: 24),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 95, 110, 132),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/jobs.png', width: 24, height: 24),
            label: 'Jobs',
            backgroundColor: Color.fromARGB(255, 95, 110, 132),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/documents.png', width: 24, height: 24),
            label: 'Applications',
            backgroundColor: Color.fromARGB(255, 95, 110, 132),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/Notifications.png', width: 24, height: 24),
            label: 'Notifications',
            backgroundColor: Color.fromARGB(255, 95, 110, 132),
          ),
        ],
      ),
    );
  }
}
