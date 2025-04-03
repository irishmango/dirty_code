import 'package:flutter/material.dart';

class DirtyScreenSeven extends StatelessWidget {
  const DirtyScreenSeven({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #7"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            MenuCard(cardIcon: Icons.star, cardName: "Stern", cardText: "Das ist ein Stern"),
            MenuCard(cardIcon: Icons.favorite, cardName: "Herz", cardText: "Das ist ein Herz"),
            MenuCard(cardIcon: Icons.home, cardName: "Haus", cardText: "Das ist ein Haus"),
            MenuCard(cardIcon: Icons.work, cardName: "Koffer", cardText: "Das ist ein Koffer"),
          ],
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final IconData cardIcon;
  final String cardName;
  final String cardText;

  const MenuCard({
    required this.cardIcon,
    required this.cardName,
    required this.cardText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(cardIcon, size: 50),
            // Icon(Icons.star, size: 50),
            const SizedBox(height: 8),
            Text(cardName, style: const TextStyle(fontSize: 22)),
            Text(cardText, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
