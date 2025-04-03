import 'package:flutter/material.dart';

class DirtyScreenEighteen extends StatelessWidget {
  const DirtyScreenEighteen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #18"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            AdditionCard(number1: 4, number2: 5, cardText: "Simple Addition"),
            AdditionCard(number1: 7, number2: 3, cardText: "Another Addition"),
            AdditionCard(number1: 6, number2: 2, cardText: "Yet Another Addition"),
            AdditionCard(number1: 5, number2: 5, cardText: "Addition Again"),
          ],
        ),
      ),
    );
  }
}

class AdditionCard extends StatelessWidget {
  final int number1;
  final int number2;
  final String cardText;

  const AdditionCard({
    required this.number1,
    required this.number2,
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
            Text(
              '$number1 + $number2 = ${number1 + number2}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 8),
            Text(
              cardText,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
