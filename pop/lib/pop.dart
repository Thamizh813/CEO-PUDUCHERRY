import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextButton(
        child: Text(
          'PTU STUDENTS',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = TextButton(
    child: Text(
      "OK",
      style: TextStyle(
        color: Colors.red,
      ),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (_) => Center(
      // Aligns the container to center
      child: Container(
        color: Colors.black,
        height: 400,
        width: 450,
        padding: EdgeInsets.only(top: 10),
        child: ListView(
          children: [
            Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(
                        top: 170, bottom: 20, left: 30, right: 25),
                    child: Container(
                      height: 230,
                      width: 320,
                      child: Card(
                        color: Colors.white12,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(children: <Widget>[
                          ListTile(
                            contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 45,
                              child: CircleAvatar(
                                radius: 22,
                                backgroundImage: AssetImage('assets/tt.jpg'),
                              ),
                            ),
                            title: Text(
                              'THAMIZHARASAN  G',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(27, 10, 20, 10),
                              child: Text.rich(TextSpan(
                                  text: '" A beginning coder in ',
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Flutter , ',
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'to build an apps for Android. A learning coder in ',
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'C language. "',
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ]))),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20, right: 10),
                                  child: IconButton(
                                    icon: Icon(FontAwesomeIcons.instagram),
                                    onPressed: () => launch(
                                        'https://www.instagram.com/thamizh813813/'),
                                    iconSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 14, right: 10),
                                  child: IconButton(
                                    icon: Icon(FontAwesomeIcons.facebook),
                                    onPressed: () => launch(
                                        'https://www.facebook.com/tamil.tamil.984991'),
                                    iconSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 14, right: 10),
                                  child: IconButton(
                                    icon: Icon(FontAwesomeIcons.github),
                                    onPressed: () =>
                                        launch('https://github.com/Thamizh813'),
                                    iconSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 14, right: 8),
                                  child: IconButton(
                                    icon: Icon(FontAwesomeIcons.whatsapp),
                                    onPressed: () => launch(
                                        'https://api.whatsapp.com/send?phone= +919597164167&text=Hello Thamizharasan'),
                                    iconSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ])
                        ]),
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        top: 20, bottom: 20, left: 30, right: 25),
                    child: Container(
                      height: 230,
                      width: 320,
                      child: Card(
                        color: Colors.white12,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(children: <Widget>[
                          ListTile(
                            contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 45,
                              child: CircleAvatar(
                                radius: 22,
                                backgroundImage: AssetImage('assets/s.jfif'),
                              ),
                            ),
                            title: Text(
                              'PRINCE  SANJIVY',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(27, 10, 20, 10),
                              child: Text.rich(TextSpan(
                                  text: '" A passionate coder in ',
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' Python ',
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          ', who loves to build apps and games for Android and Web. "',
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ]))),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20, right: 10),
                                  child: IconButton(
                                    icon: Icon(FontAwesomeIcons.instagram),
                                    onPressed: () => launch(
                                        'https://www.instagram.com/princesanjivy'),
                                    iconSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 14, right: 10),
                                  child: IconButton(
                                    icon: Icon(FontAwesomeIcons.facebook),
                                    onPressed: () => launch(
                                        'https://www.facebook.com/PrinceSanjivy'),
                                    iconSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 14, right: 10),
                                  child: IconButton(
                                    icon: Icon(FontAwesomeIcons.github),
                                    onPressed: () => launch(
                                        'https://github.com/princesanjivy'),
                                    iconSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 14, right: 8),
                                  child: IconButton(
                                    icon: Icon(FontAwesomeIcons.globeAmericas),
                                    onPressed: () => launch(
                                        'https://princesanjivy.github.io/portfolio/'),
                                    iconSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ])
                        ]),
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        top: 20, bottom: 20, left: 30, right: 25),
                    child: Container(
                      height: 230,
                      width: 320,
                      child: Card(
                        color: Colors.white12,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(children: <Widget>[
                          ListTile(
                            contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 45,
                              child: CircleAvatar(
                                radius: 22,
                                backgroundImage: AssetImage('assets/y.jfif'),
                              ),
                            ),
                            title: Text(
                              'YUVACHANDIRAN',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(27, 10, 20, 10),
                              child: Text.rich(TextSpan(
                                  text: '" A beginning coder in ',
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Flutter , ',
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'to build an apps for Android. A learning coder in ',
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'C language. "',
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ]))),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20, right: 10),
                                  child: IconButton(
                                    icon: Icon(FontAwesomeIcons.instagram),
                                    onPressed: () => launch(
                                        'https://instagram.com/yuvachn?igshid=1f34azj7e1ntv'),
                                    iconSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 14, right: 10),
                                  child: IconButton(
                                    icon: Icon(FontAwesomeIcons.facebook),
                                    onPressed: () {},
                                    iconSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 14, right: 10),
                                  child: IconButton(
                                    icon: Icon(FontAwesomeIcons.github),
                                    onPressed: () =>
                                        launch('https://github.com/yuvachn'),
                                    iconSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 14, right: 8),
                                  child: IconButton(
                                    icon: Icon(FontAwesomeIcons.whatsapp),
                                    onPressed: () => launch(
                                        'https://api.whatsapp.com/send?phone= +916380032347&text=Hello Yuvachandiran'),
                                    iconSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ])
                        ]),
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        top: 20, bottom: 20, left: 30, right: 25),
                    child: Container(
                      height: 230,
                      width: 320,
                      child: Card(
                        color: Colors.white12,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(children: <Widget>[
                          ListTile(
                            contentPadding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 45,
                              child: CircleAvatar(
                                radius: 22,
                                backgroundImage: AssetImage('assets/y.jfif'),
                              ),
                            ),
                            title: Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 13, 10),
                              child: Text(
                                'YADHAVA PRASSANA  G',
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(27, 10, 20, 10),
                              child: Text.rich(TextSpan(
                                  text: '" A beginning coder in ',
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Flutter , ',
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'to build an apps for Android. A learning coder in ',
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'C language. "',
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ]))),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20, right: 10),
                                  child: IconButton(
                                    icon: Icon(FontAwesomeIcons.instagram),
                                    onPressed: () => launch(
                                        'https://instagram.com/y.a.d.a.v.a_1618?igshid=g9a0nmhcn6t4'),
                                    iconSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 14, right: 10),
                                  child: IconButton(
                                    icon: Icon(FontAwesomeIcons.twitter),
                                    onPressed: () {},
                                    iconSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 14, right: 10),
                                  child: IconButton(
                                    icon: Icon(FontAwesomeIcons.github),
                                    onPressed: () => launch(
                                        'https://github.com/yadhavaprasanna'),
                                    iconSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 14, right: 8),
                                  child: IconButton(
                                    icon: Icon(FontAwesomeIcons.whatsapp),
                                    onPressed: () => launch(
                                        'https://api.whatsapp.com/send?phone= +916369591791&text=Hello Yadhava prassana'),
                                    iconSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ])
                        ]),
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        top: 20, bottom: 40, left: 30, right: 25),
                    child: Container(
                      height: 230,
                      width: 320,
                      child: Card(
                        color: Colors.white12,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(children: <Widget>[
                          ListTile(
                            contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 45,
                              child: CircleAvatar(
                                radius: 22,
                                backgroundImage: AssetImage('assets/v.jpg'),
                              ),
                            ),
                            title: Text(
                              'VIGNESH  K',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(27, 10, 20, 10),
                              child: Text.rich(TextSpan(
                                  text: '" An intermediate level  ',
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          'competitive programmer , Problem solver , and a Front end Developer "',
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ]))),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20, right: 10),
                                  child: IconButton(
                                    icon: Icon(FontAwesomeIcons.instagram),
                                    onPressed: () => launch(
                                        'https://www.instagram.com/vignesh_hendrix/'),
                                    iconSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 14, right: 10),
                                  child: IconButton(
                                    icon: Icon(FontAwesomeIcons.youtube),
                                    onPressed: () => launch(
                                        'https://www.youtube.com/channel/UCq2svALK86O5_VbPl0grNBw'),
                                    iconSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 14, right: 10),
                                  child: IconButton(
                                    icon: Icon(FontAwesomeIcons.github),
                                    onPressed: () => launch(
                                        'https://github.com/VigneshHendrix'),
                                    iconSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 14, right: 8),
                                  child: IconButton(
                                    icon: Icon(FontAwesomeIcons.globeAmericas),
                                    onPressed: () => launch(
                                        'https://vigneshhendrix.github.io/#/'),
                                    iconSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ])
                        ]),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  return alert;
}
