import 'package:flutter/material.dart';
import 'package:meditate/BottomStyle.dart';
import 'package:meditate/FontStyle.dart';
import 'package:meditate/responsive.dart';
import 'package:meditate/time%20picker.dart';
import 'package:meditate/timepickter.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    Responsive responsive = Responsive(h, w);
    return Scaffold(
      backgroundColor: Color(0xFF9AA2FD),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: responsive.percentHight(50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Silent 🔥 Moon", style: TextStyle(fontSize: 24))],
            ),
            SizedBox(height: responsive.percentHight(50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " Hi Afsar, Welcome ",
                  style: textStyle(30, FontWeight.w700, Colors.white),
                ),
              ],
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " to Silent Moon ",
                  style: textStyle(30, FontWeight.w300, Colors.white),
                ),
              ],
            ),
            SizedBox(height: responsive.percentHight(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: responsive.percentWidth(317),
                  child: Text(
                    "Explore the app, Find some peace of mind to prepare for meditation.",
                    style: textStyle(16, FontWeight.w300, Colors.white),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(height: responsive.percentHight(96)),

            Row(
              children: [
                Expanded(
                  child: Container(
                    height: responsive.percentHight(258),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/group1.png"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: responsive.percentHight(84)),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Timepickter()));
                    },
                    child: Text(
                      "GET STARTED",
                      style: textStyle(14, FontWeight.w400, Colors.black),
                    ),
                    style: buttonStyle(

                      Size(double.infinity, responsive.percentHight(63)),
                      Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
