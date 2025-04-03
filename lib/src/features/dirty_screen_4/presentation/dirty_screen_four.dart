import 'package:flutter/material.dart';

class DirtyScreenFour extends StatelessWidget {
  const DirtyScreenFour({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #4"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            MenuOption(boxColor: Colors.blueAccent, boxIcon: Icon(Icons.home, color: Colors.white), boxName: "Home"),
            MenuOption(boxColor: Colors.greenAccent, boxIcon: Icon(Icons.work, color: Colors.white), boxName: "Work"),
            MenuOption(boxColor: Colors.orangeAccent, boxIcon: Icon(Icons.school, color: Colors.white), boxName: "School"),
            MenuOption(boxColor: Colors.purpleAccent, boxIcon: Icon(Icons.directions_bike, color: Colors.white), boxName: "Bike"),
          ],
        ),
      ),
    );
  }
}

class MenuOption extends StatelessWidget {
  final Color boxColor;
  final Icon boxIcon;
  final String boxName;

  const MenuOption({
    required this.boxColor,
    required this.boxIcon,
    required this.boxName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: boxColor,
      ),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          boxIcon,
          const SizedBox(width: 8),
          Text(
            boxName,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
