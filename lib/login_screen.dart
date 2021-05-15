import 'package:coffe_shop/home.dart';
import 'package:coffe_shop/widgets/login_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/loginbg.png'),
            fit: BoxFit.cover,
          )
        ),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 250,
                  height: 250,
                  child: Image(
                    image: AssetImage('assets/images/login-logo.png')
                  )
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 150,
                      padding: EdgeInsets.only(top: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.brown[700]
                      ),
                      child: Center(
                        child: FlatButton(
                          child: Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 23
                            ),
                          ),
                          onPressed: (){
                            Navigator.push(context,
                              CupertinoPageRoute(
                                builder: (context) => HomeScreen(),
                              )
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      height: 50,
                      width: 150,
                      padding: EdgeInsets.only(top: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.brown[700]
                      ),
                      child: Center(
                        child: FlatButton(
                          child: Text(
                            'Register',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 23
                            ),
                          ),
                          onPressed: (){},
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    LoginButton(
                      bgColor: Colors.white,
                      image: 'assets/images/google.png',
                      imgsize: 25,
                      text: 'Connect with Google',
                      textColor: Colors.black,
                    ),
                    SizedBox(height: 20),
                    LoginButton(
                      bgColor: Color(0xff1976D2),
                      image: 'assets/images/facebook.png',
                      imgsize: 30,
                      text: 'Connect with Facebook',
                      textColor: Colors.white,
                    ),
                  ],
                ),
                Expanded(
                  child: Image.asset('assets/images/coffees-logo.png'),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
