import 'package:flutter/material.dart';

class MySecondListView extends StatelessWidget {
  List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 30, 50, 70, 50];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height * .17,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: numbers.length,
              itemBuilder: (BuildContext context, int n) {
                return CircleAvatar(
                  radius: 50,
                  child: Text(
                    '${numbers[n]}',
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
