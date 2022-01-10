import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4622FE),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      "Inbox",
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.download_for_offline,
                      size: 28,
                      color: Colors.white,
                    ),
                  ],
                ),
                const Icon(
                  Icons.menu_outlined,
                  size: 28,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Favorite Contact',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.17,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 30,
                      ),
                    ),
                    Text(
                      "Cody",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            height: 600,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 12),
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    radius: 30,
                  ),
                  title: const Text('Alan Byrd'),
                  subtitle:
                      const Text('Really thats great, we will do it tommorow'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('2.30pm'),
                      Text('2'),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
