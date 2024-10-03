import 'package:flutter/material.dart';
import 'immutable_widget.dart';

class BasicScreen extends StatelessWidget{
  const BasicScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'My CV',
            style: TextStyle(color: Colors.white),
            ),
          iconTheme: IconThemeData(color: Colors.white),
          actions: const [
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
          ], ),
      body: ImmutableWidget(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ), 
              child: Align(
                alignment: Alignment.centerLeft, // Aligns text to the center-left
                child: Text(
                  'CV Sections',
                  style: TextStyle(
                    color: Colors.white, // Optional: Change text color
                    fontSize: 26,
                    fontWeight: FontWeight.w500, // Optional: Change text size
                  ),
                ),
              ),
            ),
            ListTile( //List Tile 1
              leading: const Icon(Icons.brightness_1_rounded, color: Color(0xFF757575), size: 35,),
              title: const Text(
                'Education',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile( //List Tile 2
              leading: const Icon(Icons.brightness_1_rounded, color: Color(0xFF757575), size: 35,),
              title: const Text(
                'Skills',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile( //List Tile 3
              leading: const Icon(Icons.brightness_1_rounded, color: Color(0xFF757575), size: 35,),
              title: const Text(
                'Projects',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile( //List Tile 4
              leading: const Icon(Icons.brightness_1_rounded, color: Color(0xFF757575), size: 35,),
              title: const Text(
                'Experience',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {},
            ),
          ],
        )
      ),
    );
  }
}