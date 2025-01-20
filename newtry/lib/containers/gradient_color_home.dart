import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final String text1;
  final String text2;

  GradientContainer({required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple[400]!, Colors.redAccent[400]!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(20.0),
      child: Row(
        // Changed from Column to Row
        children: [
          Expanded(
            // Added Expanded to make text take available space
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  text2,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            // Icon now appears at the end of the Row
            Icons.description,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
    );
  }
}
