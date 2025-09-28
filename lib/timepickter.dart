import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditate/FontStyle.dart';
import 'package:meditate/responsive.dart';

import 'BottomStyle.dart';
import 'Goodmorning.dart';

class Timepickter extends StatefulWidget {
  @override
  State<Timepickter> createState() => _TimepickterState();
}

class _TimepickterState extends State<Timepickter> {
  List<String> days = ["SU", "M", "T", "W", "TH", "FR", "S"];
  List<bool> slected = List.filled(7, false);


  int selectedHour = 11;
  int selectedMinute = 30;
  String selectedPeriod = "AM";

  @override
  Widget build(BuildContext context) {
    double Hight = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    Responsive responsive = Responsive(Hight, Width);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: responsive.percentHight(60)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: responsive.percentHight(60),
                  width: responsive.percentWidth(258),
                  child: Text(
                    "What time would you like to meditate?",
                    style: textStyle(24, FontWeight.w700, Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: responsive.percentHight(15)),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: responsive.percentHight(60),
                  width: responsive.percentWidth(317),
                  child: Text(
                    "Any time you can choose but We recommend first thing in th morning.",
                    style: textStyle(16, FontWeight.w300, Color(0xFFA1A4B2)),
                  ),
                ),
              ],
            ),
            SizedBox(height: responsive.percentHight(38)),
            // Container(
            //
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text(
            //         SlectedTime == null
            //             ? "na slected Time"
            //             : "Slected Time ${SlectedTime!.minute.toString().padLeft(2)} : ${SlectedTime!.hour.toString().padLeft(2)}",textAlign: TextAlign.center,style: textStyle(30, FontWeight.w700, Colors.black),
            //       ),
            //       ElevatedButton(onPressed: (){
            //         slectTime();
            //       }, child: Text("Choice Time "))
            //     ],
            //   ),
            // ),
            SizedBox(
              height: responsive.percentHight(192),
              child: Row(
                children: [
                  Expanded(
                    child: CupertinoPicker(
                      itemExtent: 40,
                      scrollController: FixedExtentScrollController(
                        initialItem: selectedHour - 1,
                      ),
                      onSelectedItemChanged: (int value) {
                        setState(() {
                          selectedHour = value + 1;
                        });
                      },
                      children: List.generate(12, (index) {
                        return Center(
                          child: Text(
                            "${index + 1}",
                            style: textStyle(16, FontWeight.w700, Colors.black),
                          ),
                        );
                      }),
                    ),
                  ),
                  Expanded(
                    child: CupertinoPicker(
                      itemExtent: 40,
                      onSelectedItemChanged: (valu) {
                        setState(() {
                          selectedMinute = valu;
                        });
                      },
                      children: List.generate(60, (index) {
                        return Center(
                          child: Text(
                            "${index}",
                            style: textStyle(16, FontWeight.w700, Colors.black),
                          ),
                        );
                      }),
                    ),
                  ),
                  Expanded(
                    child: CupertinoPicker(
                      itemExtent: 40,
                      onSelectedItemChanged: (valu) {
                        setState(() {
                          selectedPeriod = valu == 0 ? "Am" : "PM";
                        });
                      },
                      children: [
                        Center(
                          child: Text(
                            "PM",
                            style: textStyle(16, FontWeight.w700, Colors.black),
                          ),
                        ),
                        Center(
                          child: Text(
                            "AM",
                            style: textStyle(16, FontWeight.w700, Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: responsive.percentHight(60)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: responsive.percentHight(60),
                  width: responsive.percentWidth(258),
                  child: Text(
                    "Which day would you like to meditate?",
                    style: textStyle(24, FontWeight.w700, Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: responsive.percentHight(15)),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: responsive.percentHight(60),
                  width: responsive.percentWidth(317),
                  child: Text(
                    "Everyday is best, but we recommend picking at least five.",
                    style: textStyle(16, FontWeight.w300, Color(0xFFA1A4B2)),
                  ),
                ),
              ],
            ),
            Row(
              children: List.generate(days.length, (inde) {
                bool isSelected = slected[inde];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      slected[inde] = !slected[inde];
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,

                      color: isSelected ? Colors.black : Colors.white,
                    ),
                    child: Text(
                      days[inde],
                      style: textStyle(12, FontWeight.w400, Colors.lightGreen),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: responsive.percentHight(45)),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Goodmorning()),
                      );
                    },
                    child: Text(
                      "GET STARTED",
                      style: textStyle(14, FontWeight.w400, Colors.black),
                    ),
                    style: buttonStyle(
                      Size(double.infinity, responsive.percentHight(63)),
                      Color(0xff8E97FD),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: responsive.percentHight(20)),
            Text(
              "NO THANKS",
              style: textStyle(14, FontWeight.w400, Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
