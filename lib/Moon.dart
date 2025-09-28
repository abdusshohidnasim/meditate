import 'package:flutter/material.dart';
import 'package:meditate/FontStyle.dart';
import 'package:meditate/responsive.dart';

class Moon extends StatefulWidget {
  const Moon({super.key});

  @override
  State<Moon> createState() => _MoonState();
}

class _MoonState extends State<Moon> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    Responsive responsive = Responsive(h, w);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: responsive.percentHight(20),
          left: responsive.percentHight(20),
          right: responsive.percentHight(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: responsive.percentHight(57)),
            Text(
              "What Brings you ",
              style: textStyle(28, FontWeight.w700, Colors.black),
            ),
            Text(
              "to Silent Moon?",
              style: textStyle(28, FontWeight.w400, Colors.black),
            ),
            SizedBox(height: responsive.percentHight(10)),
            Text(
              "choose a topic to focuse on:",
              style: textStyle(20, FontWeight.w300, Colors.black),
            ),
            SizedBox(height: responsive.percentHight(30)),
            Expanded(
              child: GridView.builder(
                itemCount: 20,
                
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1,
                  
                ),
                itemBuilder: (context, int index) {
                  if(index%3==0){
                    return Container(
                      height: responsive.percentHight(200),
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/group1.png"),fit: BoxFit.cover,),borderRadius: BorderRadius.circular(20)
                      ),
                    );
                  }else if(index%2==0){
                    return Container(
                      height: responsive.percentHight(50),
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/group.png"),fit: BoxFit.cover,),borderRadius: BorderRadius.circular(20)
                      ),
                    );
                  }
                  else{
                    return Container(
                      height: responsive.percentHight(110),
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/group.png"),fit: BoxFit.cover,),borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text(""),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
