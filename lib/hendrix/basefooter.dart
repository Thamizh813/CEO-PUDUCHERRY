import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void redirect(String url) async {
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
    );
  } else {
    print('Sorry,could not launch $url');
  }
}

void main() => runApp(MaterialApp(
      home: Footer(),
    ));

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.only(
          left: 110.0,
          top: 30.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quick Links',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0,
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    InkWell(
                      child: Text(
                        'Election Commission of India',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {
                        redirect('https://eci.gov.in/');
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      child: Text(
                        'Voter Portal',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {
                        redirect('https://www.nvsp.in/');
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      child: Text(
                        'Apply for Voter Card',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {
                        redirect('https://voterportal.eci.gov.in/');
                      },
                    ),
                    SizedBox(
                      height: 11.0,
                    ),
                    InkWell(
                      child: Text(
                        'RTI Online',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {
                        redirect('https://rti.eci.nic.in/');
                      },
                    )
                  ],
                ),
                SizedBox(
                  width: 290,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Explore More',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0,
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    InkWell(
                      child: Text(
                        'Download cVIGIL',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {
                        redirect(
                            'https://play.google.com/store/apps/details?id=in.nic.eci.cvigil&hl=en_US');
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      child: Text(
                        'Booth App',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {
                        redirect('https://boothapp.eci.gov.in/');
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      child: Text(
                        'PWD App',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {
                        redirect(
                            'https://play.google.com/store/apps/details?id=pwd.eci.com.pwdapp&hl=en_IN');
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      child: Text(
                        'Voter Helpline App',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {
                        redirect('https://www.elections.tn.gov.in/EPIC.aspx');
                      },
                    )
                  ],
                ),
                SizedBox(
                  width: 300,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SVEEP (EXTERNAL)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0,
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    InkWell(
                      child: Text(
                        'About SVEEP',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {
                        redirect('https://ecisveep.nic.in/division/about-us/');
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      child: Text(
                        'Awards',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {
                        redirect(
                            'https://ecisveep.nic.in/articles.html/national-awards/');
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      child: Text(
                        'Video Publications',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {
                        redirect('https://ecisveep.nic.in/video/');
                      },
                    ),
                    SizedBox(
                      height: 11.0,
                    ),
                    InkWell(
                      child: Text(
                        'History',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {
                        redirect('https://ecisveep.nic.in/division/history/');
                      },
                    )
                  ],
                ),
                SizedBox(
                  width: 250,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      child: InkWell(
                        child: FaIcon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      onTap: () {
                        launch('https://www.facebook.com/CeoPondicherry/');
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 25,
                      ),
                      child: GestureDetector(
                        child: InkWell(
                          child: FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        onTap: () {
                          redirect('https://twitter.com/ceopuducherry');
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 25,
                      ),
                      child: GestureDetector(
                        child: InkWell(
                          child: FaIcon(
                            FontAwesomeIcons.youtube,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        onTap: () {
                          redirect('https://youtube.com/user/GELS2014');
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 25,
                      ),
                      child: GestureDetector(
                        child: InkWell(
                          child: FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        onTap: () {
                          redirect('https://www.instagram.com/ceopuducherry/');
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Text('Home ',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      onTap: () {
                        redirect("https://puducherry-dt.gov.in/");
                      },
                    ),
                    VerticalDivider(
                      color: Colors.blue,
                    ),
                    InkWell(
                      child: Text(' Gallery ',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      onTap: () {
                        redirect("https://puducherry-dt.gov.in/gallary/");
                      },
                    ),
                    // VerticalDivider(
                    //   color: Colors.black,
                    // ),
                    // InkWell(
                    //   child: Text(
                    //     ' Assets Declarations ',
                    //   ),
                    //   onTap: () {},
                    // ),
                    VerticalDivider(
                      color: Colors.blue,
                    ),

                    InkWell(
                        child: Text(' Contact Us ',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        onTap: () {
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
                                              fontSize: 25,
                                              fontWeight: FontWeight.w900),
                                        )),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          //mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              ' Office of the Chief Electoral Officer.',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              ' Villianur,Lawsthottam,Reddiarpalayam,Puducherry-605110',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              ' We seek the active cooperation of all the electors of Bihar for setting up a truly citizen friendly system. We also seek your suggestions for improving the system and increasing public satisfaction.',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
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
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 30, left: 460),
                                                  child: Column(
                                                    children: [
                                                      InkWell(
                                                        onTap: () =>
                                                            Colors.black,
                                                        child: Icon(
                                                          Icons.phone,
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
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        '0413-2661448',
                                                        style: TextStyle(
                                                            fontSize: 10),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 30, left: 300),
                                                  child: Column(
                                                    children: [
                                                      InkWell(
                                                        onTap: () =>
                                                            Colors.black,
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
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        '0413-2661448',
                                                        style: TextStyle(
                                                            fontSize: 10),
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
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 30, left: 450),
                                                    child: Column(
                                                      children: [
                                                        InkWell(
                                                          onTap: () =>
                                                              Colors.black,
                                                          child: Icon(
                                                            Icons.mail,
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
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          'election.pon@nic.in/',
                                                          style: TextStyle(
                                                              fontSize: 10),
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          'ceo_pondicherry@eci.gov.in',
                                                          style: TextStyle(
                                                              fontSize: 10),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 30, left: 270),
                                                    child: Column(
                                                      children: [
                                                        InkWell(
                                                          onTap: () =>
                                                              Colors.black,
                                                          child: Icon(
                                                            Icons.home,
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
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          'Villianur Main Road,',
                                                          style: TextStyle(
                                                              fontSize: 10),
                                                        ),
                                                        Text(
                                                          'Lawsthottam,ReddiarPalayam,',
                                                          style: TextStyle(
                                                              fontSize: 10),
                                                        ),
                                                        Text(
                                                          'Puducherry-605110.',
                                                          style: TextStyle(
                                                              fontSize: 10),
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
                        }

                        // const Contactus({Key key}) : super(key: key);

                        // @override
////  Widget build(BuildContext context) {
                        // return Scaffold(
                        //  body: FlatButton(
                        //  onPressed: () {
                        // createAlertDialog(context);
                        // },
                        //  child: Text('contact us')));
                        //}
//}
                        // },
                        ),
                    VerticalDivider(
                      color: Colors.blue,
                    ),
                    InkWell(
                      child: Text(' SiteMap ',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      onTap: () {},
                    ),
                    VerticalDivider(
                      color: Colors.blue,
                    ),
                    InkWell(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: ' Developed by ',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            TextSpan(
                              text: ' PTU Students ',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => SimpleDialog(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Department of Information Technology",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text("Yadhava Prasanna G"),
                                    Text("Thamizharasan G"),
                                    Text("Vignesh K"),
                                    Text("Yuvachandiran R"),
                                    Text("Sanjivy K"),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20.0,
              ),
              child: Text(
                '© 2021 Public (Elections) Department, Puducherry. All rights reserved.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
