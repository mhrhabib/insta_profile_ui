import 'package:flutter/material.dart';

class MySecondListView extends StatelessWidget {
  List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<String> imageUrl = [
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
  ];
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
    Colors.lime,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .17,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: numbers.length,
            itemBuilder: (BuildContext context, int n) {
              return CircleAvatar(
                backgroundColor: colors[n],
                backgroundImage: NetworkImage(imageUrl[n]),
                radius: 50,
                child: Text(
                  '${numbers[n]}',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
