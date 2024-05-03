import 'package:flutter/material.dart';

class HeMessageBubble extends StatelessWidget {
  const HeMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the colors
    final colors = Theme.of(context).colorScheme;

    // Return the message bubble
    return Column(
      // Align the message bubble to the left
      crossAxisAlignment: CrossAxisAlignment.start,
      // Add the message bubble
      children: [
        // Add the message bubble container
        Container(
          // Add the decoration
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          // Add the message
          child: const Padding(
            // Add the padding
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // Add the message text
            child: Text(
              'Hello there!',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 5),

        // Add the image bubble
        _ImageBubble(),

        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the size of the screen
    final size = MediaQuery.of(context).size;

    // Return the image bubble
    return ClipRRect(
      // Add the border radius
      borderRadius: BorderRadius.circular(20),
      // Add the image
      child: Image.network(
        // Add the image URL
        "https://yesno.wtf/assets/no/16-b66d2db7543f5259c86abc166d6901cf.gif",
        // Add the width and height
        width: size.width * 0.7,
        height: 150,
        // Add the fit
        fit: BoxFit.cover,
        // Add the loading builder
        loadingBuilder: (context, child, loadingProgress) {
          // Check if the loading progress is null
          if (loadingProgress == null) return child;

          return Container(
            // Add the width
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('User sending image...'),
          );
        },
      ),
    );
  }
}
