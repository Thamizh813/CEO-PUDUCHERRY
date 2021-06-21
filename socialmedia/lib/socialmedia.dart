import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 500),
      child: Column(children: [
        SizedBox(
          width: 400,
          height: 20,
        ),
        InkWell(
          onTap: () => launch('https://www.instagram.com/ceopuducherry/'),
          child: new Icon(
            FontAwesomeIcons.instagram,
            size: 30,
          ),
        ),
        SizedBox(
          width: 400,
          height: 10,
        ),
        InkWell(
          onTap: () => launch('https://www.facebook.com/CeoPondicherry/'),
          child: new Icon(
            FontAwesomeIcons.facebook,
            size: 30,
          ),
        ),
        SizedBox(
          width: 400,
          height: 10,
        ),
        InkWell(
          onTap: () => _launchURL(
              'ceo_pondicherry@eci.gov.in',
              'election.pon@nic.in',
              'ELECTION DEPARTMENT',
              'LETTER TO ELCETION DEPARTMENT'),
          child: new Icon(
            FontAwesomeIcons.mailBulk,
            size: 30,
          ),
        ),
        SizedBox(
          width: 400,
          height: 10,
        ),
        InkWell(
          onTap: () => launch('https://twitter.com/ceopuducherry?s=08'),
          child: new Icon(
            FontAwesomeIcons.twitter,
            size: 30,
          ),
        ),
        SizedBox(
          width: 400,
          height: 10,
        ),
        InkWell(
          onTap: () => launch('https://youtube.com/user/GELS2014'),
          child: new Icon(
            FontAwesomeIcons.youtube,
            size: 30,
          ),
        ),
      ]),
    );
  }

  _launchURL(
      String toMailId, String ccMailId, String subject, String body) async {
    var url = 'mailto:$toMailId?cc=$ccMailId&subject=$subject&body=$body';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
