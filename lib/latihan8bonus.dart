import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 8',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tuiter',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 80, 182, 255),
        ),
        body: ProfilePage(),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              color: Colors.blue,
              child: Image.asset(
                'assets/banner.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            SizedBox(
              height: 100,
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ],
        ),
        Positioned(
          top: 150,
          left: 16,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 4, // Lebar border putih
              ),
              shape: BoxShape.circle,
            ),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/upn.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 250,
          left: 16,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'UPN Veteran Jawa Timur',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                InkWell(
                  onTap: () {
                    // Action when clicked
                  },
                  child: Text(
                    '@upnvjt_official',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 117, 121, 123),
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'AKUN RESMI UPN "VETERAN JAWA TIMUR" Dikelola oleh Humas UPN "Veteran" Jawa Timur Kampus Bela Negara',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 4),
                InkWell(
                  onTap: () {
                    // Action when clicked
                  },
                  child: Text(
                    'Translate Bio',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 215,
          right: 16,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Follow',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
