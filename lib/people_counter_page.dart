import 'package:flutter/material.dart';

import 'styles_values.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: Text(
              "0",
              style: TextStyle(fontSize: 80),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {},
                child: const Text("ADD", style: TextStyle(fontSize: 30))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                ElevatedButton(onPressed: () {}, child: const Text("Remove")),
          ),
        ],
      ),
    );
  }
}
