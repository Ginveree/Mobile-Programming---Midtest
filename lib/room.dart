import 'package:flutter/material.dart';
import 'select.dart';

void main() => runApp(const RoomDetails());

class RoomDetails extends StatelessWidget {
  const RoomDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("RentARoom"),
            ),
            body: SafeArea(
              minimum: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Image.network(
                        'https://slumberjer.com/rentaroom/images/1_1.jpg',
                        width: 300,
                        height: 250,
                        fit: BoxFit.contain),
                    Image.network(
                        'https://slumberjer.com/rentaroom/images/1_2.jpg',
                        width: 300,
                        height: 250,
                        fit: BoxFit.contain),
                    Image.network(
                        'https://slumberjer.com/rentaroom/images/1_3.jpg',
                        width: 300,
                        height: 250,
                        fit: BoxFit.contain),
                    ElevatedButton(
                      onPressed: () {
                        () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (content) => const Display()));
                      },
                      child: const Text('Details'),
                    )
                  ],
                ),
              ),
            )));
  }
}
