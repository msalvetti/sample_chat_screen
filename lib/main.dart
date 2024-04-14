import 'package:another_yes_no_flutter_application/config/theme/app_theme.dart';
import 'package:another_yes_no_flutter_application/presentation/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 17).theme(),
      home: ChatScreen(),
    );
  }
}
