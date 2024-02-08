import 'package:flutter/material.dart';


class SecondWidget extends StatefulWidget {
  @override
  _SecondWidgetState createState() => _SecondWidgetState();
}

class _SecondWidgetState extends State<SecondWidget> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _reenterPasswordController = TextEditingController();


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
              "Let's get Started!",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,// Set the font size
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              "First Name",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 7.0),
            TextFormField(
              controller: _firstNameController,
              decoration: InputDecoration(
                  // labelText: 'First Name',
                filled: true,
                fillColor: Color.fromARGB(255, 233, 235, 238),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                  borderSide: BorderSide.none, // No border on the sides
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter first name';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            Text(
              "Last Name",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 7.0),
            TextFormField(
              controller: _lastNameController,
              decoration: InputDecoration(
                  // labelText: 'Last Name',
                filled: true,
                fillColor: Color.fromARGB(255, 233, 235, 238),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                  borderSide: BorderSide.none, // No border on the sides
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter last name';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            Text(
              "Email Address",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 7.0),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                  // labelText: 'Email',
                filled: true,
                fillColor: Color.fromARGB(255, 233, 235, 238),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                  borderSide: BorderSide.none, // No border on the sides
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                } else if (!value.contains('@')) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            Text(
              "Phone Number",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 7.0),
            TextFormField(
              controller: _phoneNumberController,
              decoration: InputDecoration(
                  // labelText: 'Phone Number',
                filled: true,
                fillColor: Color.fromARGB(255, 233, 235, 238),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                  borderSide: BorderSide.none, // No border on the sides
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter phone number';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            Text(
              "Password",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 7.0),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                  // labelText: 'Password',
                filled: true,
                fillColor: Color.fromARGB(255, 233, 235, 238),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                  borderSide: BorderSide.none, // No border on the sides
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter password';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            Text(
              "Re-enter Password",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 7.0),
            TextFormField(
              controller: _reenterPasswordController,
              decoration: InputDecoration(
                  // labelText: 'Re-enter Password',
                filled: true,
                fillColor: Color.fromARGB(255, 233, 235, 238),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                  borderSide: BorderSide.none, // No border on the sides
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please re-enter password';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            // ElevatedButton(
            //   onPressed: () {
            //     if (_formKey.currentState?.validate() ?? false) {
            //       // Form is valid, perform your action
            //       print('Name: ${_nameController.text}');
            //       print('Email: ${_emailController.text}');
            //     }
            //   },
            //   child: Text('Submit'),
            // ),
          ],
        ),
      ),
    );
  }

}