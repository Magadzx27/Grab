import 'package:flutter/material.dart';
import 'components/NavigationBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: const Color(0xF000B14F),
              ),
          scaffoldBackgroundColor: Colors.white,
          textTheme:
              const TextTheme(bodyLarge: TextStyle(color: Colors.white))),
      home: const NavigationBarPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
