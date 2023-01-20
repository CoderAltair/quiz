import 'package:flutter/material.dart';

import 'package:quiz/screens/welcome/welcome_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double w = 200;
  double h = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Categoriya 1'),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const WelcomeScreen();
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: const BoxDecoration(),
                  width: w,
                  height: h,
                  child: const Image(
                    image: AssetImage(
                      'assets/images/1.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
