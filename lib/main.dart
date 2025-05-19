import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Info App',
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 252, 255),
      body: Center(
        child: GestureDetector(
          onDoubleTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
          child: Image.asset('assets/logo.png'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 154, 220, 255),
        appBar: AppBar(
          title: Text('Muhammad Awab Sial'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person), text: 'About Me'),
              Tab(icon: Icon(Icons.home), text: 'Hometown'),
              Tab(icon: Icon(Icons.school), text: 'Student Life'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GestureDetector(
              onLongPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdScreen('About Me: ')),
                );
              },
              child: Center(child: Text('My name is Muhammad Awab Sial. Basically I am from Sheikhupura. I am 21 years old and currently enrolled in BS(CS) in Bahria University')),
            ),
            GestureDetector(
              onLongPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdScreen('Hometown: ')),
                );
              },
              child: Center(child: Text('I am from Sheikhupura. Its around 45km from Lahore.')),
            ),
            GestureDetector(
              onLongPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdScreen('Student Life: ')),
                );
              },
              child: Center(child: Text('Nothing to say about student life at BUIC')),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  String content;

  ThirdScreen(this.content);

  @override
  Widget build(BuildContext context) {
    content+= "This the detailed information screen. But there is no detail about me";
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 96, 248, 241),

      appBar: AppBar(
        title: Text('Detailed Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            content,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
