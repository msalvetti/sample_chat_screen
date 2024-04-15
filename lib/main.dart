import 'package:another_yes_no_flutter_application/config/theme/app_theme.dart';
import 'package:another_yes_no_flutter_application/presentation/providers/chat_provider.dart';
import 'package:another_yes_no_flutter_application/presentation/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ChatProvider>(
          create: (_) => ChatProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Yes No App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 17).theme(),
        home: ChatScreen(),
      ),
    );
  }
}
