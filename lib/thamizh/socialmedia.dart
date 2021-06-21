import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // IconButton(
        //   icon: Icon(FontAwesomeIcons.instagram),
        //   onPressed: () => launch('https://github.com/Thamizh813'),
        //   iconSize: 25,
        //   color: Colors.white,
        // ),
        IconButton(
          icon: Icon(FontAwesomeIcons.facebook),
          onPressed: () => launch('https://github.com/Thamizh813'),
          iconSize: 20,
          color: Colors.white,
        ),
        IconButton(
          icon: Icon(FontAwesomeIcons.mailBulk),
          onPressed: () => launch('mailto:dcrev.pon@nic.in'),
          iconSize: 20,
          color: Colors.white,
        ),
        IconButton(
          icon: Icon(FontAwesomeIcons.twitter),
          onPressed: () => launch('https://twitter.com/ceopuducherry'),
          iconSize: 20,
          color: Colors.white,
        ),
        IconButton(
          icon: Icon(FontAwesomeIcons.youtube),
          onPressed: () => launch('https://github.com/Thamizh813'),
          iconSize: 20,
          color: Colors.white,
        ),
      ],
    );
  }
}
