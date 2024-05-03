import 'package:flutter/material.dart';
import 'package:yes_or_no/presentation/widgets/chat/he_message_bubble.dart';
import 'package:yes_or_no/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Leading icon
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.ftsl1-1.fna.fbcdn.net/v/t1.6435-9/67387486_2313889135363655_7978720209877860352_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGsSe1TPD6IP-Pz6tujGmpo65LHJo4X_Vnrkscmjhf9WXrEIKaKnLXYOXZGCMQ751HtXuviQqc1ZI9ojW0sHFI_&_nc_ohc=rxec_yK60KAQ7kNvgG4RhOH&_nc_ht=scontent.ftsl1-1.fna&oh=00_AfAaBze6gwsYSqL09G3lYB2l1uiv-iFjjxS6BuKK1P0vZw&oe=665C028D'),
          ),
        ),
        // Title of the screen
        title: const Text('Salvador'),
        // Center the title in ANDROID
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SafeArea widget to avoid the notch and the system bar
    return SafeArea(
      // Padding widget to add padding to the child
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        // Column widget to stack the children vertically
        child: Column(
          children: [
            // Expanded widget to fill the available space
            Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return (index % 2 == 0)
                        ? const HeMessageBubble()
                        : const MyMessageBubble();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
