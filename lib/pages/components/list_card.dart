import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {

  final String leftText;
  final String rightText;

  ListCard({required this.leftText, required this.rightText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 28,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          border: Border.all(color: Colors.black, width: 0.9),
        ),
        child: Row(
          children: [
            Text(leftText),
            const Spacer(),
            Text(rightText),
          ],
        ),
      ),
    );
  }
}
