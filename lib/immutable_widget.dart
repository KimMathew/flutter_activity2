import 'package:flutter/material.dart';

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: Container(
        color: Colors.grey.shade200,  // Set your desired background color here
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20), //Create vertical space between two widgets
              CircleAvatar(
                radius: 70,
                backgroundColor: Colors.blue.shade100,
                child: Text(
                  'KM',
                  style: TextStyle(fontSize: 40, color: Colors.blue.shade700),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Kim Mathew Bautista',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
              ),
              Text(
                '+63 9162224481', 
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey.shade600),
              ),
              Text(
                '22-08736@g.batstate-u.edu.ph', 
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey.shade600),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.fromLTRB(15, 6, 0, 0),
                height: 140,
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
            ],
          ),
        ),
      ),
    );
  }
}
