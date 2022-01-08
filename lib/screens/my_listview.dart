import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  List friends = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"];
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.blue,
    Colors.black,
    Colors.pink,
    Colors.brown,
    Colors.purple,
    Colors.orange,
    Colors.lime
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: friends.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.all(8),
          alignment: Alignment.center,
          height: 80,
          width: 100,
          color: colors[index],
          child: Text(
            friends[index],
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
