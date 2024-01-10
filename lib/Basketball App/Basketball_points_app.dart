import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahmoud_apps/Basketball%20App/cubit/cubit.dart';
import 'package:mahmoud_apps/Basketball%20App/cubit/states.dart';

class BasketballPointsApp extends StatelessWidget {
  const BasketballPointsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = BlocProvider.of<CounterCubit>(context);
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
                          '${cubit.teamApoints}',
                          style: const TextStyle(
                            fontSize: 120,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            minimumSize:
                                const Size(150, 50), // background color
                          ),
                          onPressed: () {
                            cubit.incrementTeams(team: 'A', buttonNumber: 1);
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
                            cubit.incrementTeams(team: 'A', buttonNumber: 2);
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
                            cubit.incrementTeams(team: 'A', buttonNumber: 3);
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
                          '${cubit.teamBpoints}',
                          style: const TextStyle(
                            fontSize: 120,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            minimumSize:
                                const Size(150, 50), // background color
                          ),
                          onPressed: () {
                            cubit.incrementTeams(
                              team: 'B',
                              buttonNumber: 1,
                            );
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
                            cubit.incrementTeams(
                              team: 'B',
                              buttonNumber: 2,
                            );
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
                            cubit.incrementTeams(
                              team: 'B',
                              buttonNumber: 3,
                            );
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
                    cubit.teamReset(
                    );
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
        },
      ),
    );
  }
}
