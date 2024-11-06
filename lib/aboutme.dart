// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';
import 'package:rebatoapp/cipher.dart';
import 'package:rebatoapp/project.dart';
// import 'package:rebatoapp/project.dart';
import 'package:rebatoapp/welcome.dart';
import 'home.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  get accountName => 'dsss';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 153, 148, 176),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 153, 148, 176),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[300],
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/nv-img.jpg'),
                  fit: BoxFit
                      .cover, // This makes the image cover the whole header
                ),
              ),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        'Wazzuuuupp Party Pipol!!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            WelcomePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('About Me'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutMe()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('Projects'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Projects()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.security),
              title: Text('Cipher'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      Cipher())
                  );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
            
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color.fromARGB(255, 214, 207, 227), // Dark center color
              Color.fromARGB(255, 130, 130, 179), // Outer darker color
              Color.fromARGB(255, 79, 79, 128), // Outer darker color
            ],
            radius: 1.5,
            center: Alignment(0.3, -0.5), // Adjust to position the glow
            focal: Alignment.center,
            focalRadius: 0.1,
          ),
        ),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'ABOUT ME',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF00d1ff)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35),
                  child: Text(
                    '– Hi I\'m Ma. Allysa Krisebel Rebato, 20 years old a 3rd-year college student and I am Pursuing Bachelor of Science in Information Technology Student at Davao del Norte State College.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 35,
                    right: 35,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/kots.jpg',
                        width: 300,
                        height: 500,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                  child: Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Education',
                        style: TextStyle(
                          color: Color(0xFF00d1ff),
                          fontSize: 25,
                        ),
                      ),
                    ),
                    // HERE I WANT TO INSERT A TEXT
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                  child: Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Magsaysay Elementary School',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    // HERE I WANT TO INSERT A TEXT
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 55.0, right: 35.0),
                  child: Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '• 2011 - 2016',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    // HERE I WANT TO INSERT A TEXT
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                  child: Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Don Manuel A. Javellana Memorial National High School',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    // HERE I WANT TO INSERT A TEXT
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 55.0, right: 35.0),
                  child: Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '• 2016 - 2022',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    // HERE I WANT TO INSERT A TEXT
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                  child: Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Color(0xFF00d1ff),
                          fontSize: 25,
                        ),
                      ),
                    ),
                    // HERE I WANT TO INSERT A TEXT
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}