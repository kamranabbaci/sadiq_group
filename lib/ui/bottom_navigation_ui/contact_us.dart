import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../widgets/text_box.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _messageController = TextEditingController();

    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(25.25456, 55.30350),
                  zoom: 16,
                ),
              ),
            ),
            SizedBox(height: 16,),

            Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(color: Colors.red.shade900, width: 2),
                  ),
                ),
                child: Text('Contact Us',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF231e46)))),
            CustomTextBox(
                icon: Icons.wifi_calling_3_sharp, text: '+971 4370 4404'),
            CustomTextBox(icon: Icons.message, text: '+971 4370 4404'),
            CustomTextBox(icon: Icons.email, text: 'info@sadiqgroup.com'),
            CustomTextBox(
                icon: Icons.location_on_sharp,
                text:
                    '1301 Burjuman Business Tower \nKhalid Bin Waleed Road, UAE'),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(color: Colors.red.shade900, width: 2),
                  ),
                ),
                child: Text('Leave A Message',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF231e46)))),
            SizedBox(
              height: 30,
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$")
                              .hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: _messageController,
                    maxLines: 5,
                    decoration: InputDecoration(
                      labelText: 'Message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your message';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(
                          fixedSize: Size(140, 60),
                          backgroundColor: Colors.red.shade900,
                            padding: EdgeInsets.all(22)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Handle form submission
                        print('Name: ${_nameController.text}');
                        print('Email: ${_emailController.text}');
                        print('Message: ${_messageController.text}');
                      }
                    },
                    child: const Text('Submit', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
