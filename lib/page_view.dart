import 'package:flutter/material.dart';

class PageViewcreater extends StatefulWidget {
  const PageViewcreater({super.key});

  @override
  State<PageViewcreater> createState() => _PageViewcreaterState();
}

class _PageViewcreaterState extends State<PageViewcreater> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: _pageController,
        itemBuilder: (context, index) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    index.toString(),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Back"))
                ],
              ),
            ),
          );
        });
  }
}
