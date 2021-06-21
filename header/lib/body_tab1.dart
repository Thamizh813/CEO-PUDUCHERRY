import 'pop_up.dart';
import 'package:flutter/material.dart';

class Firsttab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return Popup();
            });
      },
      child: Padding(
        padding: EdgeInsets.only(
            left: size.height * .18,
            bottom: size.height * .15,
            right: size.width * .04),
        child: Container(
          height: size.height * .40,
          width: size.height * .40,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 2)
              ],
              color: Colors.white70,
              borderRadius: BorderRadius.circular(size.height * .04)),
          child: Text(
            '',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}

class Bottomtab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return Popup();
            });
      },
      child: Padding(
        padding:
            EdgeInsets.only(top: size.height * .15, right: size.width * .04),
        child: Container(
          height: size.height * .40,
          width: size.height * .40,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 2)
              ],
              color: Colors.white70,
              borderRadius: BorderRadius.circular(size.height * .04)),
          child: Text(
            '',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}

class Toptab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return Popup();
            });
      },
      child: Padding(
        padding:
            EdgeInsets.only(bottom: size.height * .15, right: size.width * .04),
        child: Container(
          height: size.height * .40,
          width: size.height * .40,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 2)
              ],
              color: Colors.white70,
              borderRadius: BorderRadius.circular(size.height * .04)),
          child: Text(
            '',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
