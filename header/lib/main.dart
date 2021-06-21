import 'dart:ui';

import 'package:flutter/material.dart';

import './collapsible_side_bar/collapsible_sidebar.dart';

import './collapsible_side_bar/sidebar/collapsible_item.dart';

import './body_tab1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sidebar ui',
      home: Scaffold(
        body: SidebarPage(),
      ),
    );
  }
}

class SidebarPage extends StatefulWidget {
  @override
  _SidebarPageState createState() => _SidebarPageState();
}

class _SidebarPageState extends State<SidebarPage> {
  List<CollapsibleItem> _items;

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
  }

  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
        text: 'Location',
        icon: Icons.location_on,
        onPressed: () {},
        isSelected: true,
      ),
      CollapsibleItem(
        text: 'contact',
        icon: Icons.contact_page,
        onPressed: () {},
      ),
      CollapsibleItem(
        text: 'About',
        icon: Icons.question_answer,
        onPressed: () {},
      ),
      CollapsibleItem(
        text: 'change mode',
        icon: Icons.mode_edit,
        onPressed: () {},
      ),
      CollapsibleItem(
        text: 'Share',
        icon: Icons.share,
        onPressed: () {},
      ),
      CollapsibleItem(
        text: 'Share',
        icon: Icons.share,
        onPressed: () {},
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: CollapsibleSidebar(
        items: _items,
        toggleButtonIcon: Icons.menu,
        unselectedIconColor: Colors.white,
        body: _body(size, context),
        selectedIconColor: Colors.black,
        selectedIconBox: Colors.amber,
        unselectedTextColor: Colors.white,
        backgroundColor: Colors.cyanAccent[400],
        selectedTextColor: Colors.black,
        textStyle: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
        titleStyle: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
        toggleTitleStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _body(Size size, BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: FractionallySizedBox(
          child: Column(
        children: <Widget>[
          Container(
            height: size.height * 0.14,
            width: double.infinity,
            color: Colors.blue,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 200),
              child: Row(children: [
                Container(
                  height: 160,
                  width: 160,
                  child: Image.asset(
                    'assets/c.png',
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Column(
                  children: [
                    Container(
                      child: Text(
                        'CHIEF ELECTORAL OFFICER',
                        style: TextStyle(
                            fontSize: 45, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ),
          Container(
            height: size.height * 0.69,
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Firsttab(),
                  Bottomtab(),
                  Toptab(),
                  Bottomtab(),
                  Toptab(),
                  Bottomtab(),
                  Toptab()
                ],
              ),
            ),
          ),
          Container(
            height: size.height * 0.17,
            color: Colors.black,
          )
        ],
      )),
    );
  }
}
