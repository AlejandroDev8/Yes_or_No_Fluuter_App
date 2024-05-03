import 'package:flutter/material.dart';
import 'package:yes_or_no/config/theme/app_theme.dart';
import 'package:yes_or_no/presentation/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Material App Bar'),
      //     centerTitle: true,
      //   ),
      //   body: Center(
      //       child: FilledButton.tonal(
      //           onPressed: () {}, child: const Text('Click me!'))),
      // ),
      home: const ChatScreen(),
    );
  }
}
