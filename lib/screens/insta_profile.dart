import 'package:flutter/material.dart';

class InstaProfile extends StatelessWidget {
  const InstaProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE4E8ED),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "_Niki_Silent Girl_",
          style: TextStyle(
            color: Colors.black,
            letterSpacing: 2,
          ),
        ),
        actions: const [
          Icon(
            Icons.menu,
            size: 32,
            color: Colors.black,
          ),
          SizedBox(width: 8),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 8),
            height: 150,
            // color: Colors.grey,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  child: const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.amber,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: const [
                              Text('31'),
                              Text("posts"),
                            ],
                          ),
                          Column(
                            children: const [
                              Text('1332'),
                              Text("followers"),
                            ],
                          ),
                          Column(
                            children: const [
                              Text('230'),
                              Text("following"),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size(
                                150,
                                MediaQuery.of(context).size.height * .05,
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'message',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size(
                                12,
                                MediaQuery.of(context).size.height * .05,
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.person_outline,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: Icon(Icons.arrow_downward),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
