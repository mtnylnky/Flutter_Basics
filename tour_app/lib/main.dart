import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Tour App';

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
      body: Center(
        child: Container(
          child: new Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: new Column(
                  children: <Widget>[
                    Image.network(
                        "https://via.placeholder.com/400x150"
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.0),
                child: new Column(
                  children: <Widget>[
                    Text(
                      "Tour App",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0,right: 10.0,left: 10.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Tour Menu',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.0,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Haberler'),
              leading: Icon(Icons.clear_all),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => NewsRoute()));
              },
            ),
            ListTile(
              title: Text('Profil'),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => ProfilRoute()));
              },
            ),
            ListTile(
              title: Text('Turlar'),
              leading: Icon(Icons.card_travel),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => TourRoute()));
              },
            ),
            ListTile(
              title: Text('Gezilecek Yerler'),
              leading: Icon(Icons.local_airport),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => PlacesVisitRoute()));
              },
            ),
            ListTile(
              title: Text('Ayarlar'),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => SettingsRoute()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NewsRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Haberler"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 10.0),
              width: 370.0,
              color: Colors.red,
              child: Text(
                  "Deneme Yazısı 1",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              width: 370.0,
              color: Colors.blue,
              child: Text(
                  "Deneme Yazısı 2",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              width: 370.0,
              color: Colors.green,
              child: Text(
                "Deneme Yazısı 3",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              width: 370.0,
              color: Colors.yellow,
              child: Text(
                "Deneme Yazısı 4",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              width: 370.0,
              color: Colors.orange,
              child: Text(
                "Deneme Yazısı 5",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TourRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Turlar'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              new Container(
                color: Colors.deepPurple,
                height: 70.0,
                margin: EdgeInsets.only(top:15.0,left: 10.0, right: 10.0),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    new Icon(
                      Icons.local_airport,
                      size: 44.0,
                      color: Colors.white,
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: 25.0,top: 3.0),
                      alignment: Alignment(-3.0, 0.0),
                      child: Column(
                        children: <Widget>[
                          new Text(
                            "Budapeşte - Prag",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.white,
                            ),
                          ),
                          new Text(
                            "5 gece, 4 gün",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: 65.0),
                      child: Column(
                        children: <Widget>[
                          new Icon(
                            Icons.forward,
                            size: 60.0,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                color: Colors.deepPurple,
                height: 70.0,
                margin: EdgeInsets.only(top:15.0,left: 10.0, right: 10.0),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    new Icon(
                      Icons.local_airport,
                      size: 44.0,
                      color: Colors.white,
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: 25.0,top: 3.0),
                      alignment: Alignment(-3.0, 0.0),
                      child: Column(
                        children: <Widget>[
                          new Text(
                            "Viyana - Paris",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.white,
                            ),
                          ),
                          new Text(
                            "3 gece, 4 gün",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: 105.0),
                      child: Column(
                        children: <Widget>[
                          new Icon(
                            Icons.forward,
                            size: 60.0,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                color: Colors.deepPurple,
                height: 70.0,
                margin: EdgeInsets.only(top:15.0,left: 10.0, right: 10.0),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    new Icon(
                      Icons.local_airport,
                      size: 44.0,
                      color: Colors.white,
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: 25.0,top: 3.0),
                      alignment: Alignment(-3.0, 0.0),
                      child: Column(
                        children: <Widget>[
                          new Text(
                            "Japonya - Küba",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.white,
                            ),
                          ),
                          new Text(
                            "15 gün",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: 85.0),
                      child: Column(
                        children: <Widget>[
                          new Icon(
                            Icons.forward,
                            size: 60.0,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 25.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Icon(
                Icons.account_circle,
                size: 94.0,
              ),
              new Text(
                "Metin YALÇINKAYA",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  new Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: new Column(
                      children: <Widget>[
                        new Text("Gezdiği Şehirler"),
                        new Text("12")
                      ],
                    ),
                  ),
                  new Container(
                    margin: EdgeInsets.only(left: 15.0,top: 20.0),
                    child: new Column(
                      children: <Widget>[
                        new Text("Gezilecek Şehirler"),
                        new Text("3")
                      ],
                    ),
                  ),
                  new Container(
                    margin: EdgeInsets.only(left: 15.0,top: 20.0),
                    child: new Column(
                      children: <Widget>[
                        new Text("Şehir Yorumları"),
                        new Text("32")
                      ],
                    ),
                  ),
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(top:35.0,left: 5.0,right: 5.0),
                    child:new Column(
                      children: <Widget>[
                        new Text(
                          "Hakkında",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(top: 15.0,left: 15.0,right: 15.0),
                    child: new Column(
                      children: <Widget>[
                        new Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                            color: Colors.black38
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(top: 55.0,left: 5.0),
                    child: new Row(
                      children: <Widget>[
                        new RaisedButton(
                          onPressed: (){},
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.message,
                                color: Colors.teal,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    margin: EdgeInsets.only(top: 55.0,left: 100.0),
                    child: new Row(
                      children: <Widget>[
                        new RaisedButton(
                          onPressed: (){},
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.near_me,
                                color: Colors.teal,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlacesVisitRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gezilecek Yerler"),
      ),
      body: Material(
          child: new Container(
              child: new SingleChildScrollView(
                  child: new ConstrainedBox(
                    constraints: new BoxConstraints(),
                    child: new Column(children: <Widget>[
                      new Image.network(
                        'https://via.placeholder.com/400x150',
                      ),
                      new Container(
                        margin: EdgeInsets.all(5.0),
                        color: Colors.teal,
                        child: new Text(
                          'Gezilecek Yerler 1',
                          textDirection: TextDirection.ltr,
                          style: new TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.only(bottom: 50.0),
                        child: new Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ac tempor purus. Nam massa quam, blandit eu accumsan ac, vehicula et lectus. Ut rutrum a enim at mattis. Curabitur consequat ultricies libero, sed dictum orci ultricies at. Nam blandit libero magna, ut auctor ante sollicitudin eu. Mauris ac congue justo. Fusce accumsan quam arcu, vel pellentesque mi interdum quis. Mauris vel mollis eros, eget viverra sapien. Sed sapien lacus, efficitur a vulputate a, sollicitudin sit amet purus. ",
                          textDirection: TextDirection.ltr,
                          style: new TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      new Image.network(
                        'https://via.placeholder.com/400x150',
                      ),
                      new Container(
                        margin: EdgeInsets.all(5.0),
                        color: Colors.teal,
                        child: new Text(
                          'Gezilecek Yerler 2',
                          textDirection: TextDirection.ltr,
                          style: new TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.only(bottom: 50.0),
                        child: new Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ac tempor purus. Nam massa quam, blandit eu accumsan ac, vehicula et lectus. Ut rutrum a enim at mattis. Curabitur consequat ultricies libero, sed dictum orci ultricies at. Nam blandit libero magna, ut auctor ante sollicitudin eu. Mauris ac congue justo. Fusce accumsan quam arcu, vel pellentesque mi interdum quis. Mauris vel mollis eros, eget viverra sapien. Sed sapien lacus, efficitur a vulputate a, sollicitudin sit amet purus. ",
                          textDirection: TextDirection.ltr,
                          style: new TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black38,
                          ),
                        ),
                      ),

                      new Image.network(
                        'https://via.placeholder.com/400x150',
                      ),
                      new Container(
                        margin: EdgeInsets.all(5.0),
                        color: Colors.teal,
                        child: new Text(
                          'Gezilecek Yerler 3',
                          textDirection: TextDirection.ltr,
                          style: new TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.all(10.0),
                        child: new Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ac tempor purus. Nam massa quam, blandit eu accumsan ac, vehicula et lectus. Ut rutrum a enim at mattis. Curabitur consequat ultricies libero, sed dictum orci ultricies at. Nam blandit libero magna, ut auctor ante sollicitudin eu. Mauris ac congue justo. Fusce accumsan quam arcu, vel pellentesque mi interdum quis. Mauris vel mollis eros, eget viverra sapien. Sed sapien lacus, efficitur a vulputate a, sollicitudin sit amet purus. ",
                          textDirection: TextDirection.ltr,
                          style: new TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ]),
                  ),
              )
          ),
      ),
    );
  }
}

class SettingsRoute extends StatelessWidget {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ayarlar"),
      ),
      body: ListView(
        children: <Widget>[
          SwitchListTile(
            title: Text('Bildirimler'),
            value: _switchValue,
            onChanged: (bool value) {},
          ),
          SwitchListTile(
            title: Text('Karanlık Mod'),
            value: _switchValue,
            onChanged: (bool value) {},
          ),
          ListTile(
            trailing: Icon(Icons.delete),
            title: Text('Hesabı Sil'),
          ),
        ],
      ),
    );
  }
}
