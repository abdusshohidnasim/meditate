import 'package:flutter/material.dart';
import 'package:meditate/FontStyle.dart';
import 'package:meditate/responsive.dart';

import 'FocusAttention.dart';
import 'HappyMorning.dart';
import 'Meditate.dart';
import 'Moon.dart';

class Goodmorning extends StatefulWidget {
  const Goodmorning({super.key});

  @override
  State<Goodmorning> createState() => _GoodmorningState();
}

class _GoodmorningState extends State<Goodmorning> {
  int slected = 0;
  void ontab(int index) {
    setState(() {
      if(index ==1){
        slected =index;
        
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Moon()));
      }
      else if(index ==2){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Happymorning()));
      }
      else if(index ==3){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Focusattention()));
      }
      else if(index ==4){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Meditate()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double Hight = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    Responsive responsive = Responsive(Hight, Width);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.amberAccent,

        onTap: (int index) {
          ontab(index);
        },

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "hoame"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shield_moon_sharp),
            label: "Sleep",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mediation),
            label: "Meditati",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music_sharp),
            label: "Music",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Afser"),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.only(
          top: responsive.percentHight(20),
          bottom: responsive.percentHight(20),
          left: responsive.percentWidth(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: responsive.percentHight(50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Silent 🔥 Moon", style: TextStyle(fontSize: 24)),
              ],
            ),

            SizedBox(height: responsive.percentHight(40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Text(
                  "Good Morning, Afsar",
                  style: textStyle(28, FontWeight.w700, Colors.black),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Text(
                  "We Wish you have a good day",
                  style: textStyle(20, FontWeight.w300, Color(0xffA1A4B2)),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(height: responsive.percentHight(30)),
            Padding(
              padding: EdgeInsets.only(right: responsive.percentWidth(20)),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: responsive.percentWidth(10),
                      ),
                      child: Container(
                        height: responsive.percentHight(210),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/imagesto.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: responsive.percentWidth(20)),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Basics \n COURSE",
                                  style: textStyle(
                                    18,
                                    FontWeight.w700,
                                    Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "3-10 MIN",
                                        style: textStyle(
                                          11,
                                          FontWeight.w400,
                                          Colors.black,
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text("Start"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: responsive.percentWidth(10),
                      ),
                      child: Container(
                        height: responsive.percentHight(210),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/images.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: responsive.percentWidth(20)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Relaxation \n MUSIC ",
                                  style: textStyle(
                                    18,
                                    FontWeight.w700,
                                    Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "3-10 MIN",
                                        style: textStyle(
                                          11,
                                          FontWeight.w400,
                                          Colors.black,
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text("Start"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: responsive.percentHight(20)),
            Padding(
              padding: EdgeInsets.only(right: responsive.percentWidth(20)),
              child: Container(
                alignment: Alignment.center,

                height: responsive.percentHight(95),
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/imagesth.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Daily Thought",
                        style: textStyle(18, FontWeight.w700, Colors.white),
                      ),
                      Icon(Icons.play_circle, size: 40, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: responsive.percentHight(40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Recomended for you",
                  style: textStyle(24, FontWeight.w400, Colors.black),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(height: responsive.percentHight(10)),

            Container(
              child: Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, int index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal:8),
                      height: responsive.percentHight(182),
                      width: responsive.percentHight(162),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            
                            height: responsive.percentHight(113),
                            width: responsive.percentHight(160),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                
                                image: AssetImage("assets/images/imagesth.jpg"),fit: BoxFit.cover
                              ),
                            ),
                          ),
                          Text("Focus",style: textStyle(18, FontWeight.w700, Colors.black),textAlign: TextAlign.start,),
                          Text("MEDITATION . 3-10 MIN",style: textStyle(11, FontWeight.w400, Colors.black),textAlign: TextAlign.start,),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
