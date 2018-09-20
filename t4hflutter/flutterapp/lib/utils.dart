import 'package:flutter/material.dart';
import 'models/menuitem.dart';
import 'package:flutterapp/pages/pages.dart';

class Utilities {
  static List<Widget> menuWidgets(BuildContext context,List<MenuItemModel> menuItems) {
    return List<Widget>.generate(
      menuItems.length,
      (int index) => GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Utilities.getPageFromId(menuItems[index].id)),
            );
        },
        child: Container(
              color: menuItems[index].bgColor,
              padding: EdgeInsets.all(40.0),
              child: Column(
                children: <Widget>[
                    Image.asset('assets/' + menuItems[index].image, width: 40.0, height: 40.0, fit: BoxFit.contain),
                    Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Text(menuItems[index].label, style: TextStyle(color: Colors.white)),
                  )
                ]
              ),
            )
      ),
    );
  }

  static StatefulWidget getPageFromId(String id) {

    StatefulWidget pageWidget;
    switch(id) {
      case 'events':
      pageWidget = EventsPage(key: null, title: 'Events');
      break;
      case 'social':
      pageWidget = SocialMediaPage(key: null, title: 'Social Media');
      break;
      case 'apps':
      pageWidget = OurAppsPage(key: null, title: 'Our Apps');
      break;
      case 'media':
      pageWidget = MediaPage(key: null, title: 'Media');
      break;
      case 'misc':
      pageWidget = EventsPage(key: null, title: 'Events');
      break;
    }

    return pageWidget;
  }
}