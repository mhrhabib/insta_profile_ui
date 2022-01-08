import 'package:flutter/material.dart';

class NewStatefulWidget extends StatefulWidget {
  String name = '';
  @override
  State<NewStatefulWidget> createState() => _NewStatefulWidgetState();
}

class _NewStatefulWidgetState extends State<NewStatefulWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.name),
            GestureDetector(
              onLongPress: () {
                setState(() {
                  count++;
                });
              },
              child: Text(
                count.toString(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Enter you name',
                  prefixIcon: Icon(Icons.person),
                ),
                onSubmitted: (String newName) {
                  setState(() {
                    widget.name = newName;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
