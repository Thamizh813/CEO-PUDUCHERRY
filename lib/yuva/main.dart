import 'dart:ui';

import 'package:flutter/material.dart';

import '../sidebar/collapsible_sidebar.dart';

import '../hendrix/basefooter.dart';
import '../yadava/header.dart';

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
        unselectedIconColor: Colors.black,
        body: _body(size, context),
        selectedIconColor: Colors.black,
        selectedIconBox: Colors.amber,
        unselectedTextColor: Colors.white,
        backgroundColor: Colors.black,
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Header(
          imgSrc: "images/logo.png",
        ),
        SizedBox(
          height: 8,
        ),
        // Expanded(
        //   child: ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //     itemCount: tabs.length,
        //     itemBuilder: (BuildContext context, int index) {
        //       return Center(
        //         child: InkWell(
        //           onTap: () {
        //             PopUp(
        //               context: context,
        //               heading: tabs[index]["title"],
        //               title: tabs[index]["title"],
        //               imgLink: tabs[index]["images"],
        //               redirectLinks: [
        //                 {
        //                   "link": "https://www.google.com",
        //                   "title": tabs[index]["title"]
        //                 },
        //               ],
        //             );
        //           },
        //           child: Padding(
        //             padding: EdgeInsets.only(left: 20),
        //             child: Container(
        //                 height: 250,
        //                 width: 250,
        //                 decoration: BoxDecoration(
        //                     boxShadow: [
        //                       BoxShadow(
        //                           color: Colors.grey,
        //                           offset: Offset(2, 4),
        //                           blurRadius: 5,
        //                           spreadRadius: 2)
        //                     ],
        //                     color: Colors.white70,
        //                     borderRadius: BorderRadius.circular(20)),
        //                 child: Column(
        //                   children: [
        //                     Container(
        //                       height: 200,
        //                       width: 250,
        //                       decoration: BoxDecoration(
        //                         image: DecorationImage(
        //                           fit: BoxFit.cover,
        //                           image: NetworkImage(
        //                             tabs[index]["images"][0],
        //                           ),
        //                         ),
        //                         borderRadius: BorderRadius.circular(20),
        //                       ),
        //                     ),
        //                     SizedBox(
        //                       height: 15,
        //                     ),
        //                     Container(
        //                       child: Text(
        //                         tabs[index]["title"],
        //                         style: TextStyle(
        //                             fontSize: 15,
        //                             fontWeight: FontWeight.bold,
        //                             color: Colors.blue),
        //                         overflow: TextOverflow.ellipsis,
        //                       ),
        //                     )
        //                   ],
        //                 )),
        //           ),
        //         ),
        //       );
        //     },
        //   ),
        // ),
        SizedBox(
          height: 8,
        ),
        Footer()
      ],
    );
  }
}
