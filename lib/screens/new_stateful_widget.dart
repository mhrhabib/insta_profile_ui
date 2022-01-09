import 'package:flutter/material.dart';

class NewStatefulWidget extends StatefulWidget {
  String name = '';
  @override
  State<NewStatefulWidget> createState() => _NewStatefulWidgetState();
}

class _NewStatefulWidgetState extends State<NewStatefulWidget> {
  int data = 0;
  Color color1 = Colors.red;
  Color color2 = Colors.green;
  bool isGreen = true;
  bool isRed = true;
  changeGreen() {
    setState(() {
      isGreen = !isGreen;
      isRed = !isRed;
    });
  }

  changeRed() {
    setState(() {
      isGreen = !isGreen;
      isRed = !isRed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: changeGreen,
              child: Container(
                height: 100,
                width: 100,
                color: isGreen ? color2 : color1,
              ),
            ),
            InkWell(
              onTap: changeRed,
              child: Container(
                height: 100,
                width: 100,
                color: isRed ? color1 : color2,
              ),
            ),
          ],
        ),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(widget.name),
      //       GestureDetector(
      //         onTap: () {
      //           setState(() {
      //             data++;
      //           });
      //         },
      //         child: Text("$data"),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(18.0),
      //         child: TextField(
      //           decoration: const InputDecoration(
      //             hintText: 'Enter your email here',
      //             hintStyle: TextStyle(color: Colors.green),
      //             labelText: 'Email:',
      //             prefixIcon: Icon(Icons.email),
      //           ),
      //           onSubmitted: (String newName) {
      //             setState(() {
      //               widget.name = newName;
      //             });
      //           },
      //         ),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.all(18.0),
      //         child: TextField(
      //           decoration: const InputDecoration(
      //             hintText: 'Enter your email here',
      //             labelText: 'Email:',
      //             prefixIcon: Icon(Icons.email),
      //           ),
      //           onSubmitted: (String newName) {
      //             setState(() {
      //               widget.name = newName;
      //             });
      //           },
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
