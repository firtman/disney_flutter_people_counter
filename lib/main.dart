import 'package:flutter/material.dart';

import 'people_counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 43, 23, 144)),
        useMaterial3: true,
      ),
      home: const PeopleCounterPage(),
    );
  }
}
