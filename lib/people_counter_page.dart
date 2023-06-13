import 'package:flutter/material.dart';

import 'styles_values.dart';

class PeopleCounterPage extends StatefulWidget {
  const PeopleCounterPage({super.key});

  @override
  State<PeopleCounterPage> createState() => _PeopleCounterPageState();
}

class _PeopleCounterPageState extends State<PeopleCounterPage> {
  // state property
  var count = 0;
  var max = 100;

  increment() {
    setState(() {
      count++;
    });
  }

  decrement() {
    if (count > 0) {
      setState(() {
        count--;
      });
    }
  }

  maxChanged(String value) {
    setState(() {
      var aux = int.tryParse(value);
      if (aux != null) {
        max = aux;
      }
    });
  }

  Color getColor() {
    if (count > max) {
      return Colors.red.shade500;
    } else if (count > max * 0.75) {
      return Colors.yellowAccent.shade700;
    } else {
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    const largeFontStyle = TextStyle(fontSize: 80);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("People Counter"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Text(
                  "$count",
                  style: TextStyle(fontSize: 80, color: getColor()),
                ),
              ),
              const Text(
                "/",
                style: largeFontStyle,
              ),
              ConstrainedBox(
                  constraints: const BoxConstraints.tightFor(width: 120),
                  child: TextField(
                    onChanged: maxChanged,
                    style: const TextStyle(fontSize: 60, color: Colors.black26),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: increment,
                child: const Text("ADD", style: TextStyle(fontSize: 30))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: decrement,
              child: const Text("Remove"),
            ),
          ),
        ],
      ),
    );
  }
}
