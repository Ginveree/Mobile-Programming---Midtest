import 'package:flutter/material.dart';
import 'details.dart';

void main() => runApp(const Display());
const result = "";

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("RentARoom"),
        ),
        body: const Text(result),
      ),
    );
  }
}

void navigation(BuildContext context) async {
      result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => allDetails()),
    );
  }
}