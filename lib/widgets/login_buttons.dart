import 'package:flutter/material.dart';
import 'package:coffe_shop/home.dart';
import 'package:flutter/cupertino.dart';

class LoginButton extends StatelessWidget {
  final Color bgColor, textColor;
  final String image, text;
  final double imgsize;

  LoginButton({this.bgColor, this.image, this.imgsize, this.text, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100), color: bgColor,
      ),
      child: FlatButton(
        onPressed: (){
          Navigator.push(context, CupertinoPageRoute(builder: (context) => HomeScreen()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: imgsize,
              width: imgsize,
              child: Image.asset(image),
            ),
            SizedBox(width: 20),
            Container(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 23
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
