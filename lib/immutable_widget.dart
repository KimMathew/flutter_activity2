import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'login_page.dart';

class ImmutableWidget extends StatefulWidget {
  const ImmutableWidget({super.key});

  @override
  _ImmutableWidgetState createState() => _ImmutableWidgetState();
}

class _ImmutableWidgetState extends State<ImmutableWidget> {
  File? _image; // holds selected image

  Future _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: Container(
        color: Colors.grey.shade200,  // Set your desired background color here
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              GestureDetector(
                onTap: _pickImage,
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.blue.shade100,
                  backgroundImage: _image != null ? FileImage(_image!) : null,
                  child: _image == null
                    ? Text(
                      'KM',
                      style: TextStyle(fontSize: 40, color: Colors.blue.shade700),
                    )
                    : null,
                ),
              ), //Create vertical space between two widgets
              SizedBox(height: 10),

              // name
              Text(
                'Kim Mathew Bautista',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
              ),

              // contact number
              Text(
                '+63 9162224481', 
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey.shade600),
              ),

              // email
              Text(
                '22-08736@g.batstate-u.edu.ph', 
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey.shade600),
              ),

              // container for professional goal
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                height: 150,
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Professional Goal',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),

              // log out button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => LoginPage())
                  );
                },
                child: const Text(
                  'Log Out',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
