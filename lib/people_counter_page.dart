import 'package:flutter/material.dart';

class PeopleCounterPage extends StatefulWidget {
  const PeopleCounterPage({super.key});

  @override
  State<PeopleCounterPage> createState() => _PeopleCounterPageState();
}

class _PeopleCounterPageState extends State<PeopleCounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("People Counter"),
        ),
        body: const Text("Hello"));
  }
}
