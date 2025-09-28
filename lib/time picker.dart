import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MeditationScreen extends StatefulWidget {
  @override
  _MeditationScreenState createState() => _MeditationScreenState();
}

class _MeditationScreenState extends State<MeditationScreen> {
  // দিনের লিস্ট
  List<String> days = ["SU", "M", "T", "W", "TH", "F", "S"];
  List<bool> selected = List.filled(7, false);

  int selectedHour = 11;
  int selectedMinute = 30;
  String selectedPeriod = "AM";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Time picker title
            Text(
              "What time would you like to meditate?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 10),

            Text(
              "Any time you can choose but we recommend first thing in the morning.",
              style: TextStyle(fontSize: 14, color: Colors.black54),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 20),

            // Cupertino Picker for Time
            SizedBox(
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Hour Picker
                  Expanded(
                    child: CupertinoPicker(
                      itemExtent: 40,
                      scrollController: FixedExtentScrollController(initialItem: selectedHour - 1),
                      onSelectedItemChanged: (value) {
                        setState(() {
                          selectedHour = value + 1;
                        });
                      },
                      children: List.generate(12, (index) {
                        return Center(child: Text("${index + 1}", style: TextStyle(fontSize: 20)));
                      }),
                    ),
                  ),

                  // Minute Picker
                  Expanded(
                    child: CupertinoPicker(
                      itemExtent: 40,
                      scrollController: FixedExtentScrollController(initialItem: selectedMinute),
                      onSelectedItemChanged: (value) {
                        setState(() {
                          selectedMinute = value;
                        });
                      },
                      children: List.generate(60, (index) {
                        return Center(child: Text(index.toString().padLeft(2, "0"), style: TextStyle(fontSize: 20)));
                      }),
                    ),
                  ),

                  // AM/PM Picker
                  Expanded(
                    child: CupertinoPicker(
                      itemExtent: 40,
                      onSelectedItemChanged: (value) {
                        setState(() {
                          selectedPeriod = value == 0 ? "AM" : "PM";
                        });
                      },
                      children: [
                        Center(child: Text("AM", style: TextStyle(fontSize: 20))),
                        Center(child: Text("PM", style: TextStyle(fontSize: 20))),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            // Day Picker Title
            Text(
              "Which day would you like to meditate?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            // Subtitle
            Text(
              "Everyday is best, but we recommend picking at least five.",
              style: TextStyle(fontSize: 14, color: Colors.black54),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 15),

            // Day Selector (Circle Buttons)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(days.length, (index) {
                bool isSelected = selected[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selected[index] = !selected[index];
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isSelected ? Colors.blue : Colors.black87,
                    ),
                    child: Text(
                      days[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }),
            ),

            SizedBox(height: 30),

            // Save Button
            ElevatedButton(
              onPressed: () {
                print("Time: $selectedHour:$selectedMinute $selectedPeriod");
                print("Days: ${[
                  for (int i = 0; i < days.length; i++)
                    if (selected[i]) days[i]
                ]}");
              },
              child: Text("SAVE", style: TextStyle(fontSize: 16)),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),

            SizedBox(height: 10),

            // No Thanks Button
            TextButton(
              onPressed: () {
                print("No thanks pressed!");
              },
              child: Text("NO THANKS", style: TextStyle(color: Colors.blue)),
            )
          ],
        ),
      ),
    );
  }
}