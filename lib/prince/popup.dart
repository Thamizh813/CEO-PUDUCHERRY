import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PopUp {
  final String heading, title;
  final List<String> imgLink;
  final List redirectLinks;
  final BuildContext context;

  PopUp({
    @required this.context,
    @required this.heading,
    @required this.title,
    this.imgLink,
    this.redirectLinks,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => PopUpWidget(
        heading: heading,
        title: title,
        imgLink: imgLink,
        redirectLinks: redirectLinks,
      ),
    );
  }
}

class PopUpWidget extends StatefulWidget {
  final String heading, title;
  final List redirectLinks;
  final List<String> imgLink;

  PopUpWidget({
    this.heading,
    this.title,
    this.imgLink,
    this.redirectLinks,
  });

  @override
  _PopUpWidgetState createState() => _PopUpWidgetState();
}

class _PopUpWidgetState extends State<PopUpWidget> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: Container(
              padding: EdgeInsets.all(16),
              width: w * 0.5,
              // height: h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Color(0xFFF7F7F7),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.heading,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: widget.imgLink.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 250,
                            height: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  widget.imgLink[index],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  for (var links in widget.redirectLinks)
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: GestureDetector(
                        child: Text(
                          links["title"],
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        onTap: () async {
                          await launch(links["link"]);
                        },
                      ),
                    ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    widget.title,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: Colors.white,
              child: Icon(
                Icons.close,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
