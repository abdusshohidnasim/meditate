import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:meditate/BottomStyle.dart';
import 'package:meditate/FontStyle.dart';
import 'package:meditate/FromFild.dart';
import 'package:meditate/responsive.dart';

import 'Signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double Hight = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    Responsive responsive = Responsive(Hight, Width);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
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
            textFormField("Email address"),
            SizedBox(height: responsive.percentHight(20)),
            textFormField("Password"),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "LOG IN",
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
            SizedBox(height: responsive.percentHight(10)),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Forgot Password?",
                    style: textStyle(14, FontWeight.w400, Colors.black),
                  ),

                ],
                recognizer: TapGestureRecognizer()..onTap=(){}
              ),
            ),
            SizedBox(height: responsive.percentHight(90)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    text: "ALREADY HAVE AN ACCOUNT? ",
                    style: textStyle(14, FontWeight.w400, Colors.black),
                    children: [
                      TextSpan(
                          text: "SIGN UP",
                          style: textStyle(
                            14,
                            FontWeight.w400,
                            Colors.deepOrangeAccent,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap=(){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signup()));
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
