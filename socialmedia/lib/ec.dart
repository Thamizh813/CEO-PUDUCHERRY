import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'election department',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: SideDrawer(),
        appBar: AppBar(
          title: Text(
            'FLUTTER MENU',
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                height: 250,
                color: Colors.blue,
                child: Text('ELECTION DEPARTEMNT',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 60,
                      fontWeight: FontWeight.w500,
                    )),
              ),
            ),
            Column(children: [
              Row(children: [
                Expanded(
                  child: Container(
                    height: 330,
                    color: Colors.white,
                  ),
                )
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child: Container(
                    height: 260,
                    color: Colors.indigo[600],
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(1350, 15, 0, 0),
                        child: IconButton(
                          icon: Icon(FontAwesomeIcons.instagram),
                          onPressed: () =>
                              launch('https://github.com/Thamizh813'),
                          iconSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(1350, 0, 0, 0),
                        child: IconButton(
                          icon: Icon(FontAwesomeIcons.facebook),
                          onPressed: () =>
                              launch('https://github.com/Thamizh813'),
                          iconSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(1350, 0, 0, 0),
                        child: IconButton(
                          icon: Icon(FontAwesomeIcons.mailBulk),
                          onPressed: () =>
                              launch('https://github.com/Thamizh813'),
                          iconSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(1350, 0, 0, 0),
                        child: IconButton(
                          icon: Icon(FontAwesomeIcons.twitter),
                          onPressed: () =>
                              launch('https://github.com/Thamizh813'),
                          iconSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(1350, 0, 0, 0),
                        child: IconButton(
                          icon: Icon(FontAwesomeIcons.youtube),
                          onPressed: () =>
                              launch('https://github.com/Thamizh813'),
                          iconSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ]),
                  )),
                ],
              ),
            ]),
          ],
        ));
  }
}

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Center(
              child: Text(
                'side menu Flutter corner',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
