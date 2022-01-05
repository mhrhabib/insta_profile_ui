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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 6),
              height: MediaQuery.of(context).size.height * .17,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(8),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                        color: Colors.yellow,
                        width: 2,
                      ),
                    ),
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36.5),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage('https://picsum.photos/200/300'),
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                      ),
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
                                Text(
                                  '31',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('posts'),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '1332',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('followers'),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '230',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('following'),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  minimumSize: const Size(160, 40)),
                              onPressed: () {},
                              child: const Text(
                                'Message',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  minimumSize: const Size(20, 40)),
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
                              style: OutlinedButton.styleFrom(
                                  minimumSize: const Size(20, 40)),
                              onPressed: () {},
                              child: const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black,
                              ),
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
      ),
    );
  }
}
