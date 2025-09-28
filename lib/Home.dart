import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:meditate/BottomStyle.dart';
import 'package:meditate/FontStyle.dart';
import 'package:meditate/responsive.dart';

import 'Login.dart';
import 'Signup.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double Hight = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    Responsive responsive = Responsive(Hight, Width);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: responsive.percentHight(50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Silent 🔥 Moon", style: TextStyle(fontSize: 24)),
              ],
            ),
            SizedBox(height: responsive.percentHight(50)),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: responsive.percentHight(242),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/group.png"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: responsive.percentHight(110)),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: responsive.percentHight(145),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "We are what we \n do",
                          textAlign: TextAlign.center,
                          style: textStyle(30, FontWeight.w700, Colors.black),
                        ),
                        Text(
                          "Thousand of people are usign silent moon \nfor smalls meditation ",
                          textAlign: TextAlign.center,
                          style: textStyle(16, FontWeight.w300, Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: responsive.percentHight(60)),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signup()));
                    },
                    child: Text("SIGN UP",style: textStyle(14, FontWeight.w400, Colors.white),),
                    style: buttonStyle(
                      Size(0, responsive.percentHight(63)),
                      Color(0xFF8E97FD),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: responsive.percentHight(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    text: "ALREADY HAVE AN ACCOUNT?",
                    style: textStyle(14, FontWeight.w400, Colors.black),
                    children: [
                      TextSpan(
                        text: " LOG IN",
                        style: textStyle(
                          14,
                          FontWeight.w400,
                          Colors.deepOrangeAccent,
                        ),
                        recognizer: TapGestureRecognizer()
                      ..onTap=(){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
                        }
          

                      ),

                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
