// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import "package:flutter/material.dart";
import "package:rebatoapp/aboutme.dart";
import "package:rebatoapp/atbash.dart";
import "package:rebatoapp/caesar.dart";
import "package:rebatoapp/home.dart";
import "package:rebatoapp/project.dart";
import "package:rebatoapp/vigenere.dart";
import "package:rebatoapp/welcome.dart";

class Cipher extends StatelessWidget {
  const Cipher({super.key});

  get accountName => 'ddddd';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Color.fromARGB(255, 214, 207, 227), // Dark center color
              Color.fromARGB(255, 130, 130, 179), // Outer darker color
              Color.fromARGB(255, 79, 79, 128), // Outermost darker color
          ],
          radius: 1.5,
          center: Alignment(0.3, -0.5), // Adjust to position the glow
          focal: Alignment.center,
          focalRadius: 0.1,
        ),
      ),
      child: Scaffold(
        backgroundColor:
            Colors.transparent, // Keep Scaffold background transparent
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 109, 108, 113),
          iconTheme: IconThemeData(color: Colors.white),
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
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Flexible(
                      child: Text(
                        'wazzzuuupp Party Pipol!!',
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
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          WelcomePage(),
                    ),
                  );
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
                    MaterialPageRoute(builder: (context) => Cipher()),
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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  'Cipher App',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff00d1ff),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ClipRRect(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(15)),
                        child: Image.asset(
                          'assets/Atbash.PNG', // Add the path to your image asset here
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Color.fromARGB(255, 78, 76, 85),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Atbash Cipher', // Add your title here
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'The Atbash cipher is a classical substitution cipher that’s super simple but pretty interesting!', // Optional description
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color.fromARGB(255, 78, 76, 85),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5,),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Atbash()),
                            );
                            print("Atbash Chiper Test!");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff00d1ff),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'View',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ClipRRect(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(15)),
                        child: Image.asset(
                          'assets/ceaserCipher.png', // Add the path to your image asset here
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Color.fromARGB(255, 78, 76, 85),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Caeser Chiper', // Add your title here
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'The Caesar cipher is another classic! It’s one of the oldest and simplest encryption techniques, credited to Julius Caesar.', // Optional description
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color.fromARGB(255, 78, 76, 85),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Caesar()),
                            );
                            print("Caeser Chiper Test!");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff00d1ff),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'View',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ClipRRect(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(15)),
                        child: Image.asset(
                          'assets/vigenere-square.png', // Add the path to your image asset here
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Color.fromARGB(255, 78, 76, 85),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Vigenre Chiper', // Add your title here
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'The Vigenère cipher is a step up from simple substitution ciphers like Caesar! It’s known as a polyalphabetic cipher, which means it uses multiple substitution alphabets based on a keyword.', // Optional description
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color.fromARGB(255, 78, 76, 85),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Vigenere()),
                            );
                            print("Vigenère Cipher Test!");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff00d1ff),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'View',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}