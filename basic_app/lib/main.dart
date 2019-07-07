import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                "Drawer Name",
                style: TextStyle(fontSize: 24.0)
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              leading: Icon(Icons.filter_1),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => FirstRoute()));
              },
            ),
            ListTile(
              title: Text('Item 2'),
              leading: Icon(Icons.filter_2),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => SecondRoute()));
              },
            ),
            ListTile(
              title: Text('Item 3'),
              leading: Icon(Icons.filter_3),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => ThirdRoute()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Route"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
        ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(2.0, 0.0), // 10% of the width, so there are ten blinds.
            colors: [const Color(0xFFFFFFEE), const Color(0xFF000000)], // whitish to gray
            tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
      )
    );
  }
}


class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Route"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(child: Text('Entry A')),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[400],
            child: const Center(child: Text('Entry C')),
          ),
          Container(
            height: 50,
            color: Colors.amber[300],
            child: const Center(child: Text('Entry D')),
          ),
          Container(
            height: 50,
            color: Colors.amber[200],
            child: const Center(child: Text('Entry E')),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry F')),
          ),
        ],
      )
    );
  }
}