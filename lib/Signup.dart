import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:meditate/FromFild.dart';
import 'package:meditate/responsive.dart';

import 'BottomStyle.dart';
import 'FontStyle.dart';
import 'Welcome.dart';

class Signup extends StatefulWidget {




  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool get surtext => true;
  bool cackboxbalu =false;



  @override
  Widget build(BuildContext context) {

    double Hight = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    Responsive responsive = Responsive(Hight, Width);
    return Scaffold(

      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: responsive.percentHight(50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome Back!",
                  style: textStyle(28, FontWeight.w700, Colors.black),
                ),
              ],
            ),
            SizedBox(height: responsive.percentHight(30)),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Icon(Icons.facebook, color: Colors.white),
                          ),
                          Expanded(
                            flex: 6,
                            child: Text(
                              "CONTINUE WITH FACEBOOK",
                              textAlign: TextAlign.center,
                              style: textStyle(
                                14,
                                FontWeight.w400,
                                Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {},
                    style: buttonStyle(
                      Size(double.infinity, responsive.percentHight(63)),
                      Color(0xFF7583CA),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: responsive.percentHight(10)),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Image.asset(
                              "assets/images/google.png",
                              height: 20,
                              width: 20,
                            ),
                          ),

                          Expanded(
                            flex: 6,
                            child: Text(
                              "CONTINUE WITH GOOGLE",
                              textAlign: TextAlign.center,
                              style: textStyle(
                                14,
                                FontWeight.w400,
                                Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {},
                    style: buttonStyle(
                      Size(double.infinity, responsive.percentHight(63)),
                      Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: responsive.percentHight(40)),
            Text(
              "OR LOG IN WITH EMAIL",
              style: textStyle(14, FontWeight.w700, Colors.black),
            ),
            SizedBox(height: responsive.percentHight(40)),
            textFormField("Enter you Email"),
            SizedBox(height: responsive.percentHight(20)),
            SizedBox(
              height: 63,
              child: textFormField("Password ",IconButton(onPressed: (){

              }, icon: Icon(
                surtext? Icons.visibility_off:Icons.visibility,
              ),iconSize:20,), ),
            ),
            SizedBox(height: responsive.percentHight(20)),
            SizedBox(
              height: 63,
              child: textFormField("Password ",IconButton(onPressed: (){

              }, icon: Icon(
                surtext? Icons.visibility_off:Icons.visibility,
              ),iconSize:20,), ),
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(flex: 3,
                  child: RichText(
                    text: TextSpan(
                      text: "I have read the  ",
                      style: textStyle(14, FontWeight.w400, Colors.black),
                      children: [
                        TextSpan(
                            text: "Privace Policy",
                            style: textStyle(
                              14,
                              FontWeight.w400,
                              Colors.deepOrangeAccent,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap=(){}


                        ),


                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: responsive.percentWidth(30),),
                Expanded(flex: 1,

                  child: Checkbox(value: cackboxbalu, onChanged: (bool? newvalue){setState(() {
                    cackboxbalu =newvalue ??false;
                  });}),
                )
              ],
            ),
            SizedBox(height: responsive.percentHight(32),),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Welcome()));
                    },
                    child: Text(
                      "GET STARTED",
                      style: textStyle(14, FontWeight.w400, Colors.white),
                    ),
                    style: buttonStyle(
                      Size(0, responsive.percentHight(63)),
                      Color(0xFF8E97FD),
                    ),
                  ),
                ),
              ],
            ),
          ],

        )
      )

    );
  }
}
