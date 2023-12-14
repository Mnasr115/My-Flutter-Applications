import 'package:flutter/material.dart';

class BasketballPointsApp extends StatefulWidget {
  const BasketballPointsApp({super.key});

  @override
  State<BasketballPointsApp> createState() => _BasketballPointsAppState(); //state//
}

class _BasketballPointsAppState extends State<BasketballPointsApp> {
  int teamApoints = 0;
  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'Points Counter',
        ),
      ),
      body: Column(
        children: [
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    'Team A',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    '$teamApoints',
                    style: const TextStyle(
                      fontSize: 120,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                      minimumSize: const Size(150, 50), // background color
                    ),
                    onPressed: () {
                      setState(() {
                        teamApoints++;
                        print(teamApoints);
                      });
                    },
                    child: const Text(
                      'Add 1 point',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        teamApoints = teamApoints + 2;
                      });
                    },
                    child: const Text(
                      'Add 2 Point',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        teamApoints = teamApoints + 3;
                      });
                    },
                    child: const Text(
                      'Add 3 Point',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 400,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 30,
                  endIndent: 30,
                ),
              ),
              Column(
                children: [
                  const Text(
                    'Team B',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    '$teamBpoints',
                    style: const TextStyle(
                      fontSize: 120,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                      minimumSize: const Size(150, 50), // background color
                    ),
                    onPressed: () {
                      setState(() {
                        teamBpoints++;
                      });
                    },
                    child: const Text(
                      'Add 1 point',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        teamBpoints = teamBpoints + 2;
                      });
                    },
                    child: const Text(
                      'Add 2 Point',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        teamBpoints = teamBpoints + 3;
                      });
                    },
                    child: const Text(
                      'Add 3 Point',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.amber, minimumSize: const Size(180, 50)),
            onPressed: () {
              setState(() {
                teamApoints = 0;
                teamBpoints = 0;
              });
            },
            child: const Text(
              'Reset',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
