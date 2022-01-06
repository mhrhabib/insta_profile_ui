import 'package:flutter/material.dart';

class MySecondListView extends StatefulWidget {
  @override
  State<MySecondListView> createState() => _MySecondListViewState();
}

class _MySecondListViewState extends State<MySecondListView> {
  bool isChecked = false;

  List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

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
          //height: MediaQuery.of(context).size.height * .17,
          child: ListView.separated(
            //scrollDirection: Axis.horizontal,
            itemCount: numbers.length,
            itemBuilder: (BuildContext context, int n) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: colors[n],
                  //backgroundImage: NetworkImage(imageUrl[n]),
                  radius: 50,
                  child: Text(
                    '${numbers[n]}',
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: const Text('This is the title'),
                subtitle: const Text('Subtitle subtitle'),
                trailing: Checkbox(
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                  value: isChecked,
                ),
              );
            },
            separatorBuilder: (context, index) => const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
