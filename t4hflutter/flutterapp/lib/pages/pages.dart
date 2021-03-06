import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutterapp/models/menuitem.dart';
import 'package:flutterapp/utils.dart';

class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Timer.run(() {
      new Timer(new Duration(days: 0, hours: 0, minutes: 0, seconds: 2, microseconds: 0, milliseconds: 0), () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage(key: null, title: 'Tech4Hood',)),
            );
      });
    });

    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 45, 92, 129),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/t4h_mobile_logo.png', width: 200.0, height: 150.0, fit: BoxFit.contain),
            new Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: new CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Color.fromARGB(255, 255, 255, 255)),
                strokeWidth: 5.0
                )
            )
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<MenuItemModel> menuItems = <MenuItemModel>[
    new MenuItemModel(
      'Events',
      'calendar_white.png',
      Color.fromARGB(255, 31, 40, 90),
      'events'
    ),
    new MenuItemModel(
      'Social Media',
      'share_white.png',
      Color.fromARGB(255, 54, 84, 144),
      'social'
    ),
    new MenuItemModel(
      'Our Apps',
      'phone_white.png',
      Color.fromARGB(255, 82, 122, 170),
      'apps'
    ),
    new MenuItemModel(
      'Media',
      'next_white.png',
      Color.fromARGB(255, 127, 177, 210),
      'media'
    ),
    new MenuItemModel(
      'Miscellaneous',
      'next_white.png',
      Color.fromARGB(255, 154, 215, 255),
      'misc'
    )
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: Container(
        padding: EdgeInsets.only(top: 100.0, left: 50.0, right: 50.0),
        color: Colors.black,
        child: Column(
          
          children: <Widget>[
            Text('hello World', style: new TextStyle(color: Colors.white)),
            Text('hello World', style: new TextStyle(color: Colors.white)),
            Text('hello World', style: new TextStyle(color: Colors.white)),
            Text('hello World', style: new TextStyle(color: Colors.white)),
            Text('hello World', style: new TextStyle(color: Colors.white)),
          ]
        )
      ),
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          title: Text(widget.title),
          backgroundColor: Color.fromARGB(255, 18, 20, 61),
          
        ),
        body: new ListView(
          shrinkWrap: true,
          children: Utilities.menuWidgets(context, menuItems),
        )
      );
  }
}

/* Events Page */
class EventsPage extends StatefulWidget {

  EventsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _EventsPageState createState() => new _EventsPageState();

}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Color.fromARGB(255, 18, 20, 61),
          
        ),
        body: new ListView(
          shrinkWrap: true,
          children: <Text>[
            Text('hello World', style: new TextStyle(color: Colors.black)),
          ]
        )
      );
  }
}


/* Social Media Page */
class SocialMediaPage extends StatefulWidget {

  SocialMediaPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SocialMediaPageState createState() => new _SocialMediaPageState();

}

class _SocialMediaPageState extends State<SocialMediaPage> {

  List<MenuItemModel> menuItems = <MenuItemModel>[
    new MenuItemModel(
      'Facebook',
      'social_facebook.png',
      Color.fromARGB(255, 51, 79, 141),
      'fb'
    ),
    new MenuItemModel(
      'Twitter',
      'social_twitter.png',
      Color.fromARGB(255, 75, 162, 235),
      'tw'
    ),
    new MenuItemModel(
      'Instagram',
      'social_instagram.png',
      Color.fromARGB(255, 158, 75, 150),
      'inst'
    ),
    new MenuItemModel(
      'YouTube',
      'social_youtube.png',
      Color.fromARGB(255, 233, 25, 33),
      'yt'
    )
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Color.fromARGB(255, 18, 20, 61),
          
        ),
        body: new ListView(
          shrinkWrap: true,
          children: Utilities.menuWidgets(context, menuItems),
        )
      );
  }
}

/* Our Apps Page */
class OurAppsPage extends StatefulWidget {

  OurAppsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _OurAppsPageState createState() => new _OurAppsPageState();

}

class _OurAppsPageState extends State<OurAppsPage> {

  List<MenuItemModel> menuItems = <MenuItemModel>[
    new MenuItemModel(
      'Android Apps',
      'apps_android.png',
      Color.fromARGB(255, 122, 192, 13),
      'android'
    ),
    new MenuItemModel(
      'IOS Apps',
      'apps_ios.png',
      Color.fromARGB(255, 114, 77, 186),
      'ios'
    ),
    new MenuItemModel(
      'Web Apps',
      'apps_web.png',
      Color.fromARGB(255, 47, 159, 221),
      'web'
    )];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Color.fromARGB(255, 18, 20, 61),
          
        ),
        body: new ListView(
          shrinkWrap: true,
          children: Utilities.menuWidgets(context, menuItems)
        )
      );
  }
}

/* Media Page */
class MediaPage extends StatefulWidget {

  MediaPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MediaPageState createState() => new _MediaPageState();

}

class _MediaPageState extends State<MediaPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Color.fromARGB(255, 18, 20, 61),
          
        ),
        body: new ListView(
          shrinkWrap: true,
          children: <Text>[
            Text('hello World', style: new TextStyle(color: Colors.black)),
          ]
        )
      );
  }
}