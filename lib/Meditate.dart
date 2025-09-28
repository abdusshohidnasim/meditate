import 'package:flutter/material.dart';
import 'package:meditate/FontStyle.dart';
import 'package:meditate/responsive.dart';

class Meditate extends StatefulWidget {
  const Meditate({super.key});

  @override
  State<Meditate> createState() => _MeditateState();
}

class _MeditateState extends State<Meditate> {
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

        onTap: (int index) {},

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: responsive.percentHight(50)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Meditate",
                textAlign: TextAlign.center,
                style: textStyle(28, FontWeight.w700, Colors.black),
              ),
            ],
          ),
          SizedBox(height: responsive.percentHight(15)),

          Text(
            "we can learn how to recognize when our minds are doing their normal everyday acrobatics.",
            textAlign: TextAlign.center,
            style: textStyle(16, FontWeight.w300, Colors.black),
          ),
          SizedBox(height: responsive.percentHight(34)),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
              height: responsive.percentHight(92),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, int index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Icon(Icons.favorite, size: 40),
                            Text("favorate"),
                          ],
                        ),
                      ),
                    );
                  } else if (index == 1) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Icon(Icons.facebook, size: 40),
                            Text("favorate"),
                          ],
                        ),
                      ),
                    );
                  } else if (index == 2) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Icon(Icons.youtube_searched_for, size: 40),
                            Text("favorate"),
                          ],
                        ),
                      ),
                    );
                  } else if (index == 3) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Icon(Icons.fact_check, size: 40),
                            Text("favorate"),
                          ],
                        ),
                      ),
                    );
                  } else if (index == 4) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Icon(Icons.remove, size: 40),
                            Text("favorate"),
                          ],
                        ),
                      ),
                    );
                  } else if (index == 5) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Icon(
                              Icons.face_retouching_natural_rounded,
                              size: 40,
                            ),
                            Text("favorate"),
                          ],
                        ),
                      ),
                    );
                  } else if (index == 6) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Icon(Icons.yard, size: 40),
                            Text("favorate"),
                          ],
                        ),
                      ),
                    );
                  } else if (index == 7) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Icon(Icons.add_a_photo_outlined, size: 40),
                            Text("favorate"),
                          ],
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ),
          SizedBox(height: responsive.percentHight(20)),
          Container(
            height: responsive.percentHight(95),
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/imagesth.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  child: Text(
                    "Daily Calm \n PAUSE PRACTICE",
                    style: textStyle(18, FontWeight.w700, Colors.white),
                  ),
                ),
                Icon(Icons.play_circle,size: 50,color: Colors.white,),
              ],
            ),
          ),
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
    );
  }
}
