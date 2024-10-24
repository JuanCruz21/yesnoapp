import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yesnoapp/config/theme/app_theme.dart';
import 'package:yesnoapp/presentation/Screens/Chat.dart';
import 'package:yesnoapp/presentation/providers/chatProviders.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ChatProvider())
        ],
        child: MaterialApp(
            title: 'Yes No App',
            debugShowCheckedModeBanner: false,
            theme: AppTheme(chosecolor: 1).theme(),
            home: const ChatScreen()));
  }
}
