import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the colors
    final colors = Theme.of(context).colorScheme;

    // Return the message bubble
    return Column(
      // Align the message bubble to the right
      crossAxisAlignment: CrossAxisAlignment.end,
      // Add the message bubble
      children: [
        // Add the message bubble container
        Container(
          // Add the decoration
          decoration: BoxDecoration(
              color: colors.primary, borderRadius: BorderRadius.circular(20)),
          // Add the message
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Occaecat veniam.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
