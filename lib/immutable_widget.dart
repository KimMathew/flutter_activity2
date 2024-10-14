import 'package:flutter/material.dart';
import 'login_page.dart';

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
                backgroundImage: AssetImage('assets/profile.jpg'),
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
                  style: TextStyle(fontSize: 16, color: Colors.white,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
