import 'package:flutter/material.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/views/screens/chat/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No App',
      debugShowCheckedModeBanner: false,
      //Perzonalizar los colores de app
      theme: AppTheme(selectedColor: 5).theme(),
      home: const ChatScreen()
    );
  }
}