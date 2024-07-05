import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(const ImRich());
}

class ImRich extends StatelessWidget {
  const ImRich({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        body: Stack(
          fit: StackFit.expand,
          children: [
            // Background Image
            Image.asset('assets/images/bg1.jpeg',
              fit: BoxFit.cover,
            ),
            // Blur effect
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
              child: Container(
                color: Colors.black.withOpacity(0),
              ),
            ),
            // Foreground content
            SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 90,
                      backgroundImage: AssetImage('assets/images/id.jpg'),
                    ),
                    SizedBox(height: 20), // Add some spacing
                    const Text(
                      'MADHAV J',
                      style: TextStyle(
                          fontFamily: 'Lobster',
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 10), // Add some spacing
                    Text(
                      'Student'.toUpperCase(),
                      style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 25,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 20), // Add some spacing
                    const SizedBox(
                      width: 170,
                      child: Divider(
                        height: 10,
                        thickness: 1,
                        color: Colors.white54,
                      ),
                    ),
                    const Card(
                      elevation: 8,
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      child: ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.redAccent,
                        ),
                        title: Text(
                          '+919876543210',
                          style: TextStyle(color: Color(0xFF000000)),
                        ),
                      ),
                    ),
                    const Card(
                      elevation: 8,
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      child: ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Colors.redAccent,
                        ),
                        title: Text(
                          'prakashbabu@gmail.com',
                          style: TextStyle(color: Color(0xFF000000)),
                        ),
                      ),
                    ),
                    const Card(
                      elevation: 8,
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      child: ListTile(
                        leading: Icon(
                          Icons.home,
                          color: Colors.redAccent,
                        ),
                        title: Text(
                          'Attingal, TVM',
                          style: TextStyle(color: Color(0xFF000000)),
                        ),
                      ),
                    ),
                    const Card(
                      elevation: 8,
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      child: ListTile(
                        leading: Icon(
                          Icons.school,
                          color: Colors.redAccent,
                        ),
                        title: Text(
                          'M E C TRIVANDRUM',
                          style: TextStyle(color: Color(0xFF000000)),
                        ),
                      ),
                    ),
                    const Card(
                      elevation: 8,
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      child: ListTile(
                        leading: Icon(
                          Icons.task_alt,
                          color: Colors.redAccent,
                        ),
                        title: Text(
                          'dart,java,c,python',
                          style: TextStyle(color: Color(0xFF000000)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
