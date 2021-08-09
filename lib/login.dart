import 'package:untitled2/phoneOTP.dart';

import 'main.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  static const String id = 'login';
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

const kTextDecoration = InputDecoration(
  hintText: 'Enter your password',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
);

class _loginState extends State<login> {
  String email = "";
  String phone = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Email',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.blue[700],
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration:
                      kTextDecoration.copyWith(hintText: 'Enter Your Email'),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(children: [
                Container(
                  width: 40,
                  height: 40,
                  padding: EdgeInsets.all(8.0),
                  child: Text('G',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                      )),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black12),
                ),
                SizedBox(
                  width: 14.0,
                ),
                Container(
                  width: 40,
                  height: 40,
                  padding: EdgeInsets.all(8.0),
                  child: Text('H',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                      )),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black12),
                ),
              ]),
              SizedBox(
                height: 24.0,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                  height: 20.0,
                  width: 125.0,
                  child: Divider(
                    color: Colors.grey[500],
                    thickness: 1.0,
                  ),
                ),
                Text(
                  'or',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[500],
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 125.0,
                  child: Divider(
                    color: Colors.grey[500],
                    thickness: 1.0,
                  ),
                ),
              ]),
              SizedBox(
                height: 24.0,
              ),
              Text(
                'Phone Number',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.blue[700],
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Container(
                child: TextField(
                  textAlign: TextAlign.center,
                  // obscureText: true,
                  onChanged: (value) {
                    phone = value;
                  },
                  decoration: kTextDecoration.copyWith(
                      hintText: 'Enter Your Phone Number'),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              buttonWidget(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buttonWidget(BuildContext context) {
  return Align(
    alignment: Alignment.center,
    child: SizedBox(
      child: MaterialButton(
          color: Colors.pink,
          splashColor: Colors.pink[800],
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          onPressed: () {
            Navigator.pushNamed(context, phoneOTP.id);
          },
          child: Text('Next',
              style: Theme.of(context)
                  .primaryTextTheme
                  .button!
                  .copyWith(fontWeight: FontWeight.w800, fontSize: 16))),
    ),
  );
}

Widget kdecoration(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: 30, top: 100, right: 30, bottom: 50),
    height: double.infinity,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
  );
}
