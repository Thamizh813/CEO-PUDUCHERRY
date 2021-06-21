import './pop_up_body.dart';
import 'package:flutter/material.dart';

class Popup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 550,
        width: 850,
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(50)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 800,
              ),
              child: Container(
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 30,
                  child: Container(
                    height: 40,
                    color: Colors.black,
                    child: Icon(
                      Icons.cancel,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
            Popupbody()
          ],
        ),
      ),
    );
  }
}
