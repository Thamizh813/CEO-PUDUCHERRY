import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class Sitemap extends StatelessWidget {
  const Sitemap({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          left: 100,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 600,
            ),
            TextButton(
              child: Text(
                'Site Map',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              onPressed: () => launch(
                  'https://maps.google.com/?cid=6584504884272741102&entry=gps'),
            ),
          ],
        ));
  }
}
