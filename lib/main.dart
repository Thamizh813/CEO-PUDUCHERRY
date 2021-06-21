import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'hendrix/basefooter.dart';
import 'sidebar/collapsible_sidebar.dart';
import 'sidebar/collapsible_sidebar/collapsible_item.dart';
import 'yadava/header.dart';

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
        onPressed: () {
          redirect(
              'https://www.google.co.in/maps/dir//Elections+Department,+Villianur+Main+Rd,+Kamalam+Nagar,+Jaya+Nagar,+Reddiarpalayam,+Puducherry,+605010/@11.9310592,79.7881619,16z/data=!4m8!4m7!1m0!1m5!1m1!1s0x3a5361a9d76f62bf:0x5b60dc4e58e6baee!2m2!1d79.7925393!2d11.9310592');
        },
        isSelected: true,
      ),
      CollapsibleItem(
          text: 'contact',
          icon: Icons.contact_page,
          onPressed: () {
            return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: SingleChildScrollView(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Center(
                              child: Text(
                            'CONTACT US',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w900),
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ' Office of the Chief Electoral Officer.',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                ' Villianur,Lawsthottam,Reddiarpalayam,Puducherry-605110',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                ' We seek the active cooperation of all the electors of Bihar for setting up a truly citizen friendly system. We also seek your suggestions for improving the system and increasing public satisfaction.',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Divider(
                            height: 30,
                            // indent: 150,
                            // endIndent: 150,
                            thickness: 2,
                          ),
                          //
                          Column(
                            //mainAxisAlignment: MainAxisAlignment.end,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'For any Election related enquiry,please contact us on',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w900),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30, left: 460),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: () => Colors.black,
                                          child: Icon(
                                            Icons.call,
                                            size: 50,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'CALL US',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          '0413-2661448',
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30, left: 300),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: () => Colors.black,
                                          child: Icon(
                                            FontAwesomeIcons.fax,
                                            size: 50,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'FAX NUMBER',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          '0413-2661448',
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Column(children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 30, left: 450),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            onTap: () => Colors.black,
                                            child: Icon(
                                              Icons.email,
                                              size: 50,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'GMAIL',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'election.pon@nic.in/',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'ceo_pondicherry@eci.gov.in',
                                            style: TextStyle(fontSize: 10),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 30, left: 270),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            onTap: () => Colors.black,
                                            child: Icon(
                                              Icons.home,
                                              // FontAwesomeIcons.locationArrow,
                                              size: 50,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'OFFICE',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Villianur Main Road,',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Text(
                                            'Lawsthottam,ReddiarPalayam,',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Text(
                                            'Puducherry-605110.',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ])
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                });
          }),
      CollapsibleItem(
        text: 'About',
        icon: Icons.question_answer,
        onPressed: () {
          launch('https://ecisveep.nic.in/division/about-us/');
        },
      ),
      CollapsibleItem(
        text: 'calendar',
        icon: Icons.calendar_today,
        onPressed: () {
          launch("https://ecisveep.nic.in/calendar/");
        },
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
    // ignore: unused_local_variable
    List tabs = [
      {
        "title": "Awareness Ballon 2017",
        "images": [
          "https://i.ibb.co/F8ZPfZ6/image.jpg",
          "https://i.ibb.co/F8ZPfZ6/image.jpg",
          "https://i.ibb.co/DzpkPc8/2.jpg",
          "https://i.ibb.co/jyCsWZH/3.jpg",
          "https://i.ibb.co/7j1qxGy/4.jpg"
        ]
      },
      {
        "title": "Bike Awarness Rally for 100% Vote 2017",
        "images": [
          "https://i.ibb.co/Rg88cPY/2.jpg",
          "https://i.ibb.co/mG9GqKW/16.jpg",
          "https://i.ibb.co/cQQL2kt/21.jpg",
          "https://i.ibb.co/1vLDwPX/30.jpg",
          "https://i.ibb.co/L87sGyb/32.jpg"
        ]
      },
      {
        "title": "Voting Registration awarness Programe at Beach Road 2017",
        "images": [
          "https://i.ibb.co/fHyX720/1.jpg",
          "https://i.ibb.co/56Nrym9/6.jpg",
          "https://i.ibb.co/dfZW21n/7.jpg",
          "https://i.ibb.co/njfkVFt/8.jpg",
          "https://i.ibb.co/7g486Fq/9.jpg"
        ]
      },
      {
        "title": "Amalopvanam school cycle rally 2017",
        "images": [
          "https://i.ibb.co/FqvDRB2/4.jpg",
          "https://i.ibb.co/prjx8Xd/12.jpg",
          "https://i.ibb.co/sWkgTtt/32.jpg",
          "https://i.ibb.co/VptwxyN/33.jpg",
          "https://i.ibb.co/Br9V7xd/43.jpg",
          "https://i.ibb.co/BNwcYdG/44.jpg"
        ]
      },
      {
        "title": "Amalopvanam school cycle rally 2017",
        "images": [
          "https://i.ibb.co/FqvDRB2/4.jpg",
          "https://i.ibb.co/prjx8Xd/12.jpg",
          "https://i.ibb.co/sWkgTtt/32.jpg",
          "https://i.ibb.co/VptwxyN/33.jpg",
          "https://i.ibb.co/Br9V7xd/43.jpg",
          "https://i.ibb.co/BNwcYdG/44.jpg"
        ]
      },
      {
        "title": "Amalopvanam school cycle rally 2017",
        "images": [
          "https://i.ibb.co/FqvDRB2/4.jpg",
          "https://i.ibb.co/prjx8Xd/12.jpg",
          "https://i.ibb.co/sWkgTtt/32.jpg",
          "https://i.ibb.co/VptwxyN/33.jpg",
          "https://i.ibb.co/Br9V7xd/43.jpg",
          "https://i.ibb.co/BNwcYdG/44.jpg"
        ]
      },
      {
        "title": "Bike rally",
        "images": [
          "https://i.ibb.co/wCXQwQD/2.jpg",
          "https://i.ibb.co/wgCrCQ4/3.jpg",
          "https://i.ibb.co/qCWXrGz/5.jpg",
          "https://i.ibb.co/1dFmz35/6.jpg",
          "https://i.ibb.co/hKGBMRd/7.jpg"
        ]
      },
      {
        "title": "Quiz Competetion2017-2018",
        "images": [
          "https://i.ibb.co/471k2h9/2.jpg",
          "https://i.ibb.co/0XSNmWm/5.jpg",
          "https://i.ibb.co/XZ9Xq28/6.jpg",
          "https://i.ibb.co/zQ4ZrgV/image.jpg",
          "https://i.ibb.co/wL4N0GV/1.jpg"
        ]
      },
      {
        "title": "National Voters day 2018",
        "images": [
          "https://i.ibb.co/HhP3qQh/2.jpg",
          "https://i.ibb.co/HtVtzTf/8.jpg",
          "https://i.ibb.co/FBKDNkB/13.jpg",
          "https://i.ibb.co/6wYj5Dz/16.jpg",
          "https://i.ibb.co/qNsSzjV/17.jpg",
          "https://i.ibb.co/ncrhJHn/1.jpg"
        ]
      },
      {
        "title": "Youth Voters Festival 2018",
        "images": [
          "https://i.ibb.co/Gn994Jx/3.jpg",
          "https://i.ibb.co/PzHZCM0/4.jpg",
          "https://i.ibb.co/n88RrNG/6.jpg",
          "https://i.ibb.co/DLBn801/image.jpg",
          "https://i.ibb.co/p3WNPgH/1.jpg",
          "https://i.ibb.co/WFtkV94/2.jpg"
        ]
      },
      {
        "title": "Workshop for Nodel Officers 2018",
        "images": [
          "https://i.ibb.co/3TxDmqS/15.jpg",
          "https://i.ibb.co/kVT0xgD/16.jpg",
          "https://i.ibb.co/mNzRnYx/17.jpg",
          "https://i.ibb.co/Z6J2tPS/7.jpg",
          "https://i.ibb.co/7CTMJ1n/13.jpg",
          "https://i.ibb.co/Jm9P3HR/14.jpg"
        ]
      },
      {
        "title": "EVM VVPAT Live Demo For Nodel Officers",
        "images": [
          "https://i.ibb.co/x622vN9/1.jpg",
          "https://i.ibb.co/KKR1RNg/2.jpg",
          "https://i.ibb.co/cv0ZZ41/3.jpg",
          "https://i.ibb.co/fvxDz23/4.jpg",
          "https://i.ibb.co/wwSFQDC/6.jpg",
          "https://i.ibb.co/HXhqn6s/image.jpg"
        ]
      },
      {
        "title": "Election Awarness Flashmob at Pondy beach 2019",
        "images": [
          "https://i.ibb.co/Q6PGhZm/5.jpg",
          "https://i.ibb.co/cXDvW18/DCIM-100-MEDIA-DJI-0016-JPG.jpg",
          "https://i.ibb.co/qRnDk41/image.jpg",
          "https://i.ibb.co/Pg5HpWY/1.jpg",
          "https://i.ibb.co/YkPPkvc/2.jpg",
          "https://i.ibb.co/7YSf784/3.jpg",
          "https://i.ibb.co/wpBwJpx/4.jpg"
        ]
      },
      {
        "title": "Election Awarness Flashmob at Providence Mall 2019",
        "images": [
          "https://i.ibb.co/k2RJb2v/4.jpg",
          "https://i.ibb.co/sRHwXrc/image.jpg",
          "https://i.ibb.co/q76Lfsb/1.jpg",
          "https://i.ibb.co/m6XLtwZ/2.jpg",
          "https://i.ibb.co/0CDPYNz/3.jpg"
        ]
      }
    ];

    // ignore: unused_local_variable
    List hortab = [
      "e-Pic Related Materials",
      "National Voter's Day 2021",
      "Posters",
      "VideoSpot",
      "Election theme Video/Audio Song",
      "Election videos 2020",
      "Puducherry SVEEP Action Plan 2020",
      "Voters Guide",
      "STATUS OF DISABLED PERSONS/UTS",
      "ELC Materials",
      "Video On Process Of Election"
    ];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 60),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Header(
              imgSrc: "assets/c.png",
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                  child: Text(
                "No Voters to be Left Behind",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    shadows: [
                      Shadow(color: Colors.deepOrange, offset: Offset(1.5, 1.5))
                    ],
                    fontSize: 30),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                ExpansionTile(
                  title: Text('kite'),
                  children: <Widget>[
                    Container(
                      height: size.height * 0.07,
                      width: size.width * 0.89,
                      color: Colors.blue,
                      child: InkWell(
                          onTap: () => launch(
                              'https://drive.google.com/folderview?id=1-SVhKbtx05i4xkOP9DTjn6d-dZAOY0OC'),
                          child: Padding(
                            padding: EdgeInsets.only(top: 5, left: 50),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_right,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'EVM VVPAT Demonstration using Mobile Van at Pondicherry Beach Square 07.03.2021',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.89,
                  color: Colors.blue,
                  child: InkWell(
                      onTap: () => launch(
                          'https://drive.google.com/drive/folders/1dK3MkP0uKIrgHU5Zcb_Ha12vE5MT6ISC?usp=sharing'),
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 50),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                              size: 35,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Mobile Van EVM-VVPAT at Indira Gandhi Stadium',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.89,
                  color: Colors.blue,
                  child: InkWell(
                      onTap: () => launch(
                          'https://drive.google.com/drive/folders/1lDuuifB7sJQVn9oieeNPuDBp4gppjIkr?usp=sharing'),
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 50),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                              size: 35,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Mobile Van EVM-VVPAT at madagadipat sandhai',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.89,
                  color: Colors.blue,
                  child: InkWell(
                      onTap: () => launch(
                          'https://drive.google.com/drive/folders/1tkSDx9e_cRLT1juofqc6q971crrfA2C6?usp=sharing'),
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 50),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                              size: 35,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Mobile Van EVM-VVPAT at PG College',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.89,
                  color: Colors.blue,
                  child: InkWell(
                      onTap: () => launch(
                          'https://drive.google.com/drive/folders/14jYHoYqHhaNTSW9jbvDwkQAURoaLIUBT?usp=sharing'),
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 50),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                              size: 35,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Mobile Van EVM-VVPAT at Ramnathpuram school',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.89,
                  color: Colors.blue,
                  child: InkWell(
                      onTap: () => launch(
                          'https://drive.google.com/drive/folders/1BdvzgvpYYn0iOKC0Wrwek0e5qduxqE7-?usp=sharing'),
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 50),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                              size: 35,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Mobile Van EVM-VVPAT at SMVEC',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.89,
                  color: Colors.blue,
                  child: InkWell(
                      onTap: () => launch(
                          'https://drive.google.com/drive/folders/1o3nVT04h3powzgpmsp4wo-fAdq1oC8T8?usp=sharing'),
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 50),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                              size: 35,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Mobile Van EVM-VVPAT at Uruvaiyar',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.89,
                  color: Colors.blue,
                  child: InkWell(
                      onTap: () => launch(
                          'https://drive.google.com/drive/folders/17CLzv_Vcix_T4EXAj7MXDyX2g1yD-OYK?usp=sharing'),
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 50),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                              size: 35,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Street Banners',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.89,
                  color: Colors.blue,
                  child: InkWell(
                      onTap: () => launch(
                          'https://drive.google.com/drive/folders/1Td9y5aO5HPU4VzP_CBvf4i0NRMLZfxrn?usp=sharing'),
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 50),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                              size: 35,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'National Voters Day 2021 Videos',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.89,
                  color: Colors.blue,
                  child: InkWell(
                      onTap: () => launch(
                          'https://drive.google.com/drive/folders/1v_-3kkbgX4OKcB7prFa7y16xk6efFxfd?usp=sharing'),
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 50),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                              size: 35,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'National Voters Day 2021',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.89,
                  color: Colors.blue,
                  child: InkWell(
                      onTap: () => launch(
                          'https://drive.google.com/drive/folders/1sIPgcdbFeUIabbrRQPrRGm5PLsFIydKX?usp=sharing'),
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 50),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                              size: 35,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'T20 Cricket Tournament for Persons with Disabled(PwD) on 31.01.2021',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.89,
                  color: Colors.blue,
                  child: InkWell(
                      onTap: () => launch(
                          'https://drive.google.com/drive/folders/1k7-xtun-LsXGzrGbQ_9mxB0KDBwCXLoY?usp=sharing'),
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 50),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                              size: 35,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Posters',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.89,
                  color: Colors.blue,
                  child: InkWell(
                      onTap: () => launch(
                          'https://drive.google.com/drive/folders/1uq8ZqzwchGauwWRjyDxXvtMZx2HbnpZ6?usp=sharing'),
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 50),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                              size: 35,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Van Innauguration 2021',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.blue,
                  height: size.height * 0.07,
                  width: size.width * 0.89,
                  child: InkWell(
                      onTap: () => launch(
                          'https://drive.google.com/drive/folders/1EImA5x7hbAxKPvvlQqX23anL0MYD52dL?usp=sharing'),
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 50),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                              size: 35,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Voter Helpline App used By People',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}

// return Container(
//   child: SingleChildScrollView(
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Header(
//           imgSrc: "assets/c.png",
//         ),
//         SizedBox(
//           height: 8,
//         ),
//         Center(
//             child: Container(
//                 child: Text(
//           "No Voters to be Left Behind",
//           style: TextStyle(
//               fontWeight: FontWeight.w600,
//               color: Colors.black,
//               shadows: [
//                 Shadow(color: Colors.deepOrange, offset: Offset(1.5, 1.5))
//               ],
//               fontSize: 30),
//         ))),
//         Container(
//           height: size.height * 1.5,
//           child: ListView.builder(
//               itemCount: hortab.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return GestureDetector(
//                   child: InkWell(
//                     onTap: () => launch(
//                         'https://drive.google.com/drive/folders/1dK3MkP0uKIrgHU5Zcb_Ha12vE5MT6ISC?usp=sharing'),
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding:
//                               const EdgeInsets.only(left: 100, right: 20),
//                           child: AnimatedContainer(
//                             width: double.maxFinite,
//                             height: size.height * .1,
//                             padding: EdgeInsets.symmetric(horizontal: 10),
//                             duration: Duration(
//                               seconds: 100,
//                             ),
//                             child: Padding(
//                               padding: EdgeInsets.only(left: 20, top: 30),
//                               child: Text(
//                                 'Awareness van at madagadipet',
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.w400,
//                                     fontSize: 20,
//                                     color: Colors.white),
//                               ),
//                             ),
//                             curve: Curves.bounceIn,
//                             color: Colors.blueAccent,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               }),
//         ),

//       ],
//     ),
//   ),
// );
