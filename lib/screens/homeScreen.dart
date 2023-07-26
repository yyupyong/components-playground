import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.amber,
                child: Text('ssss'),
              ),
            ),
            Container(
              height: 100,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
