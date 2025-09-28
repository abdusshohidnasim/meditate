import 'package:flutter/material.dart';
import 'package:meditate/FontStyle.dart';
import 'package:meditate/responsive.dart';

class Happymorning extends StatefulWidget {
  const Happymorning({super.key});

  @override
  State<Happymorning> createState() => _HappymorningState();
}

class _HappymorningState extends State<Happymorning> {
  @override
  Widget build(BuildContext context) {
    double Hight = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    Responsive responsive = Responsive(Hight, Width);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: responsive.percentHight(288),
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/sun.jpg"),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: responsive.percentHight(60)),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(shape: CircleBorder()),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                    SizedBox(width: responsive.percentWidth(200)),
                    SizedBox(height: 70, width: responsive.percentWidth(20)),
                    Icon(Icons.favorite),
                    SizedBox(width: responsive.percentWidth(15)),
                    Icon(Icons.download),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Happy Morning",
                  style: textStyle(34, FontWeight.w700, Colors.black),
                ),
                Text(
                  "COURSE",
                  style: textStyle(14, FontWeight.w400, Colors.black),
                ),
                SizedBox(height: responsive.percentHight(20)),
                Container(
                  height: responsive.percentHight(46),
                  width: responsive.percentWidth(315),

                  child: Text(
                    "Ease the mind into a restful night’s sleep  with these deep, amblent tones.",
                    textAlign: TextAlign.start,
                    style: textStyle(14, FontWeight.w400, Colors.black),
                  ),
                ),
                SizedBox(height: responsive.percentHight(30)),
                Row(
                  children: [
                    Icon(Icons.favorite, color: Colors.red),
                    Text("  24.234 Favorits"),
                    SizedBox(width: responsive.percentWidth(30)),
                    Icon(Icons.headphones, color: Colors.green),
                    Text("  24.234 Favorits"),
                  ],
                ),
                SizedBox(height: responsive.percentHight(40)),
                Text(
                  "Pick a Nnrrator",
                  style: textStyle(20, FontWeight.w700, Colors.black),
                ),
                SizedBox(height: responsive.percentHight(25)),
                Row(
                  children: [
                    Text(
                      "MALE VOICE",
                      style: textStyle(16, FontWeight.w400, Colors.black),
                    ),
                    SizedBox(width: responsive.percentWidth(60)),
                    Text(
                      "MALE VOICE",
                      style: textStyle(16, FontWeight.w400, Colors.black),
                    ),
                  ],
                ),
                SizedBox(width: 90, child: Divider(thickness: 4)),
                Divider(height: 0.1, thickness: 2),
                SizedBox(height: responsive.percentHight(20)),
                Container(
                  height: 150,
                  width: 200,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: responsive.percentHight(50),
                          child: Row(
                            children: [
                              Icon(Icons.play_circle, size: 40),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text(
                                    "Focus Attention",
                                    style: textStyle(
                                      16,
                                      FontWeight.w400,
                                      Colors.black,
                                    ),


                                  ),
                                  SizedBox(height: responsive.percentHight(10)),
                                  Text(
                                    "10 MIN",textAlign:TextAlign.start ,
                                    style: textStyle(
                                      11,
                                      FontWeight.w400,
                                      Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
