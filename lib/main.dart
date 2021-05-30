// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'dart:async';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash2(),
    );
  }
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new FirstScreen(),
      title: new Text(
        'Ibex Coin',
        textScaleFactor: 2,
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      // title: new Text('Ibex Coin',textScaleFactor: 2,),
      image: new Image.network('https://i.ibb.co/b5TJ06D/App-icon.png'),
      loadingText: Text("Loading"),
      photoSize: 100.0,

      loaderColor: Colors.blue,
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:AppBar(
      //   leading: Icon(Icons.menu),
      //   title: new Text(
      //       'Ibex Coin',
      //   ),
      //
      //   actions: [
      //     Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 16),
      //       // child: Icon(Icons.search),
      //     ),
      //     Icon(Icons.more_vert),
      //   ],
      //   backgroundColor: Colors.amber,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              child: Text(
                'Ibex Coin',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.amber,
                ),
              ),
            ),
            Container(
              child: Text(
                'The Future Cryptocurrency',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Center(
              child: Container(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                // Respond to button press
              },
              child: Container(
                width: 100,
                child: Center(
                  child: Text("Login",
                      style: TextStyle(
                        color: Colors.amber,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 250,
            ),
            Container(
              child: Text(
                'New at Ibex Crypto Network ?',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SecondScreen();
                  }),
                ); // Respond to button press
              },
              child: Container(
                width: 150,
                child: Center(
                  child: Text("Signup",
                      style: TextStyle(
                        color: Colors.green,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              child: Text(
                'Ibex Coin',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.amber,
                ),
              ),
            ),
            Container(
              child: Text(
                'The Future Cryptocurrency',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Center(
              child: Container(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'User Name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }),
                ); // Respond to button press
              },
              child: Container(
                width: 100,
                child: Center(
                  child: Text("Finish",
                      style: TextStyle(
                        color: Colors.amber,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  // final String title;

  // HomeScreen({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: AppBar(title: Text('')),
      appBar: AppBar(
        // leading: Icon(Icons.menu),
        title: new Text(
          'Ibex Coin',
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            // child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.amber,
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }),
              ); // Respond to button press
            },
            child: Container(
              width: 180,
              child: Center(
                child: Text("Activat Mining",
                    style: TextStyle(
                      color: Colors.green,
                    )),
              ),
            ),
          )
        ],
      )),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Ibex Coin'),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Setting'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SettingScreen();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.menu),
        title: new Text(
          'Ibex Coin',
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            // child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              // backgroundColor: Colors.lightBlue,
              child: const Text('U'),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('Full Name'),
                    ),
                    Container(
                      child: Text('Usama'),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Divider(
              indent: 16,
              endIndent: 16,
            ),
            Center(
              child: Container(
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('Full Name'),
                    ),
                    Container(
                      child: Text('Usama'),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Divider(
              indent: 16,
              endIndent: 16,
            ),
            Center(
              child: Container(
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('Username'),
                    ),
                    Container(
                      child: Text('Usama15'),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Divider(
              indent: 16,
              endIndent: 16,
            ),
            Center(
              child: Container(
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('Invition Code'),
                    ),
                    Container(
                      child: Text('Coming Soon'),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Divider(
              indent: 16,
              endIndent: 16,
            ),
            Center(
              child: Container(
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('Referral Link to Share'),
                    ),
                    Container(
                      child: Text('Coming Soon'),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Divider(
              indent: 16,
              endIndent: 16,
            ),
            Center(
              child: Container(
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('Phone Number'),
                    ),
                    Container(
                      child: Text('+93201234567'),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Divider(
              indent: 16,
              endIndent: 16,
            ),
            Center(
              child: Container(
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('Email'),
                    ),
                    Container(
                      child: Text('Coming Soon'),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Divider(
              indent: 16,
              endIndent: 16,
            ),
            Center(
              child: Container(
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('Facebook'),
                    ),
                    Container(
                      child: Text('Coming Soon'),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Divider(
              indent: 16,
              endIndent: 16,
            ),
            Center(
              child: Container(
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('Second Currency'),
                    ),
                    Container(
                      child: Text('Coming Soon'),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Divider(
              indent: 16,
              endIndent: 16,
            ),
            Center(
              child: Container(
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('White Paper'),
                    ),
                    Container(
                      child: Text('Coming Soon'),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Divider(
              indent: 16,
              endIndent: 16,
            ),
            Center(
              child: Container(
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('FAQ'),
                    ),
                    Container(
                      child: Text('Coming Soon'),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Divider(
              indent: 16,
              endIndent: 16,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return FirstScreen();
                  }),
                ); // Respond to button press
              },
              child: Container(
                width: 100,
                child: Center(
                  child: Text("LogOut",
                      style: TextStyle(
                        color: Colors.amber,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Ibex Coin'),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }),
                );
              },
            ),
            ListTile(
              title: Text('Setting'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SettingScreen();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
