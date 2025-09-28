import 'package:flutter/material.dart';
import 'package:meditate/responsive.dart';

import 'FontStyle.dart';

class Focusattention extends StatefulWidget {
  const Focusattention({super.key});

  @override
  State<Focusattention> createState() => _FocusattentionState();
}

class _FocusattentionState extends State<Focusattention> {
  double sectedvalu =3;

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    Responsive responsive = Responsive(h, w);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close),
                  ),
                  SizedBox(width: responsive.percentWidth(190)),
                  Icon(Icons.favorite, color: Colors.white),
                  SizedBox(width: responsive.percentWidth(15)),

                  Icon(Icons.download, color: Colors.white),
                ],
              ),
            ),
            Expanded(flex: 50, child: Container()),
            Expanded(
              flex: 20,
              child: Text(
                "Night \n Island",
                style: textStyle(34, FontWeight.w700,Colors.black),
              ),
            ),
            Expanded(
              flex: 20,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.replay_30, color: Colors.red),
                  ),
                  SizedBox(width: responsive.percentWidth(65),),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.play_circle, color: Colors.red),
                  ),
                  SizedBox(width: responsive.percentWidth(66),),

                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.forward_30, color: Colors.red),
                  ),

                ],
              ),
            ),

            Expanded(
              child: Slider(value: sectedvalu
                  ,min: 0,max: 25, onChanged: (valu){
                setState(() {
                  sectedvalu= valu;
                });
              }),

            ),
            SizedBox(height: responsive.percentHight(10),),
            Row(
              children: [
                Text("${sectedvalu.toStringAsFixed(0).padLeft(2,"0")}",style: textStyle(20, FontWeight.w700,Colors.black),),
                SizedBox(width: responsive.percentHight(240),),
                Text("4,50",style: textStyle(20, FontWeight.w700,Colors.black),)

              ],
            ),
            Expanded(
                flex: 25,
                child: Container())
          ],
        ),
      ),
    );
  }
}
