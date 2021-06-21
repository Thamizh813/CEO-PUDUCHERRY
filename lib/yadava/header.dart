import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String imgSrc;

  Header({@required this.imgSrc});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
    
      height: size.height * 0.25,
      color: Colors.blue,
      child: Padding(
        padding: EdgeInsets.all(size.height * .03),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width * .04,
            ),
            Image(
              image: AssetImage(imgSrc),
              height: size.height * .2,
            ),
            SizedBox(
              width: size.width * .02,
            ),
            //Image(image: AssetImage('image/sveep.png')),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Chief Electoral Officer',
                  style: TextStyle(
                    fontSize: size.height * .055,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: size.height * .010,
                ),
                Text(
                  'தலைமை தேர்தல் அதிகாரி',
                  style: TextStyle(
                    fontSize: size.height * .035,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: size.height * .025),
                Text(
                  'Villianur Main Road,Lawsthottam,Reddiarpalayam,Puducherry-605110',
                  style: TextStyle(
                      fontSize: size.height * .020,
                      fontWeight: FontWeight.w200,
                      color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              width: size.width * .03,
            ),
            Row(
              children: [
                GestureDetector(
                  onLongPress: () {
                    return showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Developed By PTU Students',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.blue),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Yadhava Prasanna G",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Thamizharasan G",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Vignesh K",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Yuvachandiran R",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Sanjivy K",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  child: Image(
                    image: AssetImage(
                      'assets/sveep.png',
                    ),
                    height: size.height * .2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: size.height * .02, top: size.height * .08),
                  child: Text(
                    'Activities',
                    style: TextStyle(
                        fontSize: size.height * .04,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
